NR==FNR && /^[ \t]*ENTITY / {
    entities[$2]=0
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
        entities[entity]++    
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
