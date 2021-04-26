{
    entities[$1]+=$2
    next
}
END {
    n = asorti(entities, dest)
    for( el in dest ) {
        if( entities[dest[el]] > 0 ) {
            printf "%d & %s \\\\\n", entities[dest[el]], dest[el]
        }
    }
}
