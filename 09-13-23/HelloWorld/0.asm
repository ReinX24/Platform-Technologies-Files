.model small ; setting the memory size that we will be using in our program
.stack ; creating the space that we will be using in our memory
.data ; for declaring variables
    Message db "Hello, World!$" ; a String variable that contains Hello, World!. $ is the terminator of the String
    .code ; start of the actual assembly code
BEGIN: ; this is the label for the start of our program
    mov dx, OFFSET Message ; this moves our Message String in the dx register where it is loaded into memory
    mov ax, SEG Message ; once it is loaded into memory, we will now move it to our ax register
    mov ds, ax ; after moving it to our ax register, we move our String data to ds (data segment)
    mov ah, 9D ; this sets the ah register to 9D, the code for printing in the console. This prints the String that ds is pointing at 
    int 21H ; interrupts the program and invokes the ah register which prints our String
    mov ah, 4CH ; after printing our String, we now replace 9D with 4CH in ah. 4CH is the code for terminating the program
    int 21H ; causes another interrupt to our program and calls ah, which now terminates our program
END BEGIN ; ending our BEGIN section