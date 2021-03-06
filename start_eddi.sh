#!/usr/bin/env bash

env_vars=($(printenv | grep EDDI_JAVA_ENV_))

argument_string=""

for item in ${env_vars[*]}
do
    argument_string="${argument_string} -D${item}"
done

java -classpath '.:lib/*' -DEDDI_ENV=$EDDI_ENV ${argument_string} ai.labs.api.ApiServer