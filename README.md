# README para la Función MATLAB: Metodo

## Descripción General

El script de MATLAB proporcionado define un método numérico destinado a demostrar la representación binaria de números de punto flotante según el estándar IEEE 754. Este script contiene tres funciones principales: `Metodo`, `Positivo`, y `Repetidos`, que trabajan juntas para convertir un número decimal dado en su representación binaria, incluyendo los componentes de signo, exponente y mantisa.

## Funcionalidad

-   **Función Metodo**: Es el punto de entrada del script. Solicita al usuario que ingrese un número y luego lo procesa para mostrar su representación binaria, incluyendo el bit de signo, exponente y mantisa. Gestiona la lógica de determinación del signo del número y delega el cálculo de la representación binaria de la parte positiva del número a la función `Positivo`.
    
-   **Función Positivo**: Se encarga de calcular la representación binaria de la parte positiva del número ingresado. Divide el cálculo en dos partes: la conversión de la parte entera a binario y el procesamiento de la parte decimal para obtener la mantisa. Además, verifica la periodicidad de la parte decimal para determinar la precisión de la representación.
    
-   **Función Repetidos**: Esta función ayuda a identificar si la parte decimal del número tiene cifras repetidas, lo cual es crucial para determinar si la parte decimal es periódica. Esto afecta cómo se representa la mantisa en la conversión a binario.
    

## Uso

1.  **Ejecución**: Para ejecutar este script, asegúrese de tener MATLAB instalado y abierto. Copie el código en el editor de MATLAB y guárdelo con una extensión `.m`.
2.  **Iniciar el Script**: En la ventana de comando de MATLAB, escriba el nombre de la función principal sin extensión y presione enter, por ejemplo, `Metodo`.
3.  **Entrada de Datos**: El script solicitará al usuario que ingrese un número. Ingrese el número deseado y presione enter para ver su representación binaria según el estándar IEEE 754.

## Componentes Clave

-   **Signo**: Determinado por la entrada del número; `1` para números negativos, `0` para positivos.
-   **Exponente**: Calculado a partir de la longitud de la parte entera del número convertido a binario, ajustado por el sesgo según el estándar IEEE 754.
-   **Mantisa**: Obtenida de la representación binaria de la parte decimal del número, considerando la periodicidad para precisión.

Este script es una herramienta educativa para entender cómo los números de punto flotante son representados en sistemas computacionales siguiendo el estándar IEEE 754.
