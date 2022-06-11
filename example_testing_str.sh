#!/bin/bash
echo "---- SCRIPT INFORMATION ---";
user_name=`whoami`
echo "Username:"$user_name;
echo "Script name: "$0;
echo "PID number:" $$;
echo "Array of parameters: "$@;
echo "Number of parameters: "$#;
echo "Arguments received:"$*;

echo "--- STRING COMPARISON WITH expr ---";
echo "Enter string_1:";
read string_1;
echo "Enter string_2:";
read string_2;
echo "STRING ARE EQUALS -> "`expr $string_1 = $string_2`;
echo "STRING ARE DISTINCT -> "`expr $string_1 != $string_2`;
echo ------------------


echo "--- NUMBER COMPARISON WITH expr---";
var_number_1=0;
var_number_2=0;
echo "Enter var_number_1:";
read var_number_1;
echo "Enter var_number_2:";
read var_number_2;
echo "Aritmetic operation ->"`expr $var_number_1 \* $var_number_2`;
echo "Evaluating expression ->"`expr $var_number_1 = $var_number_2`;



echo "--- COMPARISON USING  WITH test ---";
FLAG_FILE=`/usr/bin/test -f /etc/passwd`;
echo "Value ->"$FLAG_FILE;
