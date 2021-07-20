NR==FNR && /^[ \t]*ENTITY / {
    match($2, /^[A-Za-z0-9]+/)
    entity = substr($2, RSTART, RLENGTH)
    entities[entity]=0
    next
}
NR==FNR && /^[ \t]*TYPE / {
    match($2, /^[A-Za-z0-9]+/)
    type = substr($2, RSTART, RLENGTH)
    entities[type]=0
    next
}
/^[ \t]*\#[0-9]+[ \t]*=[ \t]*/ {
    fullline = $0
    gsub(/[ \t]+/, "", fullline)
    match(fullline, /^\#[0-9]+=/)
    withoutstart = substr(fullline, RLENGTH+1)
    while ( match(withoutstart, /IFC[A-Z0-9]+/) != 0 ) {
        entity = substr(withoutstart, RSTART, RLENGTH)
        withoutstart = substr(withoutstart, RLENGTH+1)
        for( el in entities ) {
            if( tolower(el) == tolower(entity) ) {
                entities[el]++
                break
            }
        }  
    }
    next
}
END {
    n = asorti(entities, dest)
    for( el in dest ) {
        if( entities[dest[el]] > 0 ) {
            printf "%s %d\n", dest[el], entities[dest[el]] 
        }
    }
}
