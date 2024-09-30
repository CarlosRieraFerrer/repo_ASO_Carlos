#!/bin/bash

AGENDA_FILE="lista.txt"


mostrar_menu() {
    echo "===================="
    echo "      AGENDA        "
    echo "===================="
    echo "1. Añadir"
    echo "2. Buscar"
    echo "3. Listar"
    echo "4. Ordenar"
    echo "5. Borrar"
    echo "6. Salir"
    echo "===================="
    echo -n "Selecciona una opción: "
}


añadir_registro() {
    echo -n "Introduce el nombre: "
    read nombre
    echo -n "Introduce la dirección: "
    read direccion
    echo -n "Introduce el teléfono: "
    read telefono

    
    echo "$nombre | $direccion | $telefono" >> "$AGENDA_FILE"
    echo "Registro añadido correctamente."
}

buscar_registro() {
    echo -n "Introduce el término a buscar (nombre, dirección o teléfono): "
    read busqueda

    if grep -i "$busqueda" "$AGENDA_FILE"; then
        echo "Resultados encontrados:"
    else
        echo "No se encontró ningún registro."
    fi
}


listar_registros() {
    if [ -f "$AGENDA_FILE" ]; then
        echo "Listando todos los registros:"
        cat "$AGENDA_FILE"
    else
        echo "El archivo de la agenda no existe o está vacío."
    fi
}

ordenar_registros() {
    if [ -f "$AGENDA_FILE" ]; then
        sort -o "$AGENDA_FILE" "$AGENDA_FILE"
        echo "Registros ordenados alfabéticamente por nombre."
    else
        echo "El archivo de la agenda no existe o está vacío."
    fi
}


borrar_agenda() {
    if [ -f "$AGENDA_FILE" ]; then
        rm "$AGENDA_FILE"
        echo "El archivo de la agenda ha sido borrado."
    else
        echo "El archivo de la agenda no existe."
    fi
}


while true; do
    mostrar_menu
    read opcion

    case $opcion in
        1)
            añadir_registro
            ;;
        2)
            buscar_registro
            ;;
        3)
            listar_registros
            ;;
        4)
            ordenar_registros
            ;;
        5)
            borrar_agenda
            ;;
        6)
            echo "Saliendo del programa."
            break
            ;;
        *)
            echo "Opción no válida. Inténtalo de nuevo."
            ;;
    esac

    echo ""
done
