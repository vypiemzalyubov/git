#!/bin/bash

gcd ()
{
    if [[ -z $M && -z $N ]]; then
        echo 'bye'
        exit
    fi 
    
    if [[ $M -eq $N ]]; then
        echo "GCD is $M"
    else
        if [[ $M -gt $N ]]; then
            let "M-= $N"
            gcd $M $N        
        else
            let "N -= $M"
            gcd $M $N
        fi
    fi
}

while [[ true ]]; do
    read M N
    gcd $M $N
done
