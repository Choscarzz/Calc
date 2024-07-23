#!/bin/bash
#  ---------------------------------------------------------
# |                                                         |
# |  Calc - Calculadora de Operaciones Básicas Interactiva  |
# |  • By @Choscar                                          |
# |                                                         |
#  ---------------------------------------------------------

# Colores
yellow='\e[33m'
green='\e[32m'
red='\e[31m'
blue='\e[34m'
whiteN='\e[1;37m'
reset='\e[0m'

# Función para sumar
sumar() {
echo -n "Número 1: "
read num1
echo -n "Número 2: "
read num2

# Mostrar resultado
if [ -z "$num1" ] || [ -z "$num2" ]; then
        echo  -e "[${red}!${reset}] Se produjo un error al operar. Los datos son incorrectos."
        exit 1
else
        res=$(($num1 + $num2))
        echo -e "${green}➜ ${whiteN}$res${reset}"
fi

# Volver a operar
echo -n "Desea sumar otra cantidad? (s/n): "
read opt2

if [ "$opt2" == "s" ]; then
        sumar
elif [ "$opt2" == "n" ]; then
        echo "Thanks!"
else
        echo "Bye..."
fi
}

# Función para restar
restar(){
echo -n "Número 1: "
read num1
echo -n "Número 2: "
read num2

# Mostrar resultado
if [ -z "$num1" ] || [ -z "$num2" ]; then
        echo  -e "[${red}!${reset}] Se produjo un error al operar. Los datos son incorrectos."
        exit 1
else
        res=$((num1 - num2))
        echo -e "${green}➜ ${whiteN}$res${reset}"
fi

# Volver a operar
echo -n "Desea restar otra cantidad? (s/n): "
read opt2

if [ "$opt2" == "s" ]; then
        restar
elif [ "$opt2" == "n" ]; then
        echo "Thanks!"
else
        echo "Bye..."
fi
}

# Función para multiplicar
multiplicar(){
echo -n "Número 1: "
read num1
echo -n "Número 2: "
read num2

# Mostrar resultado
if [ -z "$num1" ] || [ -z "$num2" ]; then
        echo  -e "[${red}!${reset}] Se produjo un error al operar. Los datos son incorrectos."
        exit 1
else
        res=$((num1 * num2))
        echo -e "${green}➜ ${whiteN}$res${reset}"
fi

# Volver a operar
echo -n "Desea multiplicar otra cantidad? (s/n): "
read opt2

if [ "$opt2" == "s" ]; then
        multiplicar
elif [ "$opt2" == "n" ]; then
        echo "Thanks!"
else
        echo "Bye..."
fi
}

# Función para dividir
dividir(){
echo -n "Número 1: "
read num1
echo -n "Número 2: "
read num2

# Mostrar resultado

if [ -z "$num1" ] || [ -z "$num2" ]; then
        echo  -e "[${red}!${reset}] Se produjo un error al operar. Los datos son incorrectos."
        exit 1
elif [ "$num2" -eq 0 ]; then
        echo -e "[${red}!${reset}] Error matemático. No se puede dividir entre 0."
        exit 1
else
        res=$((num1 / num2))
        echo -e "${green}➜ ${whiteN}$res${reset}"
fi

# Volver a operar
echo -n "Desea dividir otra cantidad? (s/n): "
read opt2

if [ "$opt2" == "s" ]; then
        dividir
elif [ "$opt2"  == "n" ]; then
        echo "Thanks!"
else
                echo "Bye..."
fi
}

# Menú de Opciones
menu(){
echo "┌────────────────────┐"
echo "│ Calculadora [+/-]  │"
echo "└────────────────────┘"
echo "│  1. Sumar          │"
echo "│  2. Restar         │"
echo "│  3. Multiplicar    │"
echo "│  4. Dividir        │"
echo "└────────────────────┘"
echo
echo -ne "• ${blue}Opción: ${reset}"
read opt

case $opt in
        1)
                sumar # Envía a la función suma
        ;;
        2)
                restar # Envía a la función resta
        ;;
        3)
                multiplicar # Envía a la función multiplicar
        ;;
        4)
                dividir # Envía a la función dividir
        ;;
        *)
                echo -e "[${red}!${reset}] La opción no existe. Verifique la opción."
                exit 1
        ;;
esac
}

# Ejecutar
menu
