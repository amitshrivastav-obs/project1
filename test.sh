#!/bin/bash
            T1="foo"
            T2="foo"
            if [ "$T1" = "$T2" ]; then
                echo expression evaluated as true
            else
                echo expression evaluated as false
            fi
	functest(){
		echo $T1
}
functest
