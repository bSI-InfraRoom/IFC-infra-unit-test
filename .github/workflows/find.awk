NR==FNR && /^[ \t]*ENTITY / {
    entities[$2]=0
    next
}
/^[ \t]*\#[0-9]+[ \t]*=[ \t]*/ {
    fullline = $0
    gsub(/[ \t]+/, "", fullline)
    match(fullline, /^\#[0-9]+=/)
    withoutstart = substr(fullline, RLENGTH+1)
    match(withoutstart, /^[A-Z0-9]+/)
    entity = substr(withoutstart, 1, RLENGTH)
    entities[entity]++
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
