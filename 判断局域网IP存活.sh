#!/bin/bash
for i in `seq 1 254`
do
 ping -c 2 192.168.31.$i > /dev/null
        if [ $? -eq 0 ]
        then
                echo "192.168.31.$i is alive" >> ./alive.txt
		    else
				        echo "192.168.31.$i is dead" >> ./dead.txt
        fi
done