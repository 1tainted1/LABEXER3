%macro print_text 2
    mov ecx, %1
    mov edx, %2
    call print_proc
%endmacro

%macro read_text 2
    mov ecx, %1
    mov edx, %2
    call read_proc
    dec eax
%endmacro

section .data
    menu_msg db 10, "===============================", 10
             db "             COR", 10
             db "===============================", 10
             db "1. Input", 10
             db "2. Output", 10
             db "3. Write to file", 10
             db "4. Read from file", 10
             db "5. Exit", 10
             db "Enter your choice: "
    menu_msg_len equ $ - menu_msg

    filename db "output.txt", 0

    p_status db "Enrollment status: "
    p_status_len equ $ - p_status
    p_stunum db "Student number: "
    p_stunum_len equ $ - p_stunum
    p_name db "Name: "
    p_name_len equ $ - p_name
    p_phone db "Phone number: "
    p_phone_len equ $ - p_phone
    p_college db "College: "
    p_college_len equ $ - p_college
    p_program db "Program: "
    p_program_len equ $ - p_program
    p_year db "Year level: "
    p_year_len equ $ - p_year
    p_address db "Address: "
    p_address_len equ $ - p_address
    p_zip db "Zip code: "
    p_zip_len equ $ - p_zip

    p_code1 db "CCS0007"
    p_code1_len equ $ - p_code1
    p_code2 db "CCS0007L"
    p_code2_len equ $ - p_code2
    p_code3 db "CS0003"
    p_code3_len equ $ - p_code3
    p_code4 db "CS0003L"
    p_code4_len equ $ - p_code4
    p_code5 db "GED0004"
    p_code5_len equ $ - p_code5
    p_code6 db "GED0021"
    p_code6_len equ $ - p_code6
    p_code7 db "GED0065"
    p_code7_len equ $ - p_code7
    p_code8 db "GED0075"
    p_code8_len equ $ - p_code8
    p_code9 db "GED0081"
    p_code9_len equ $ - p_code9
    p_code10 db "GED0081L"
    p_code10_len equ $ - p_code10

    p_title1 db "COMPUTER PROGRAMMING 2 (LEC)"
    p_title1_len equ $ - p_title1
    p_title2 db "COMPUTER PROGRAMMING 2 (LAB)"
    p_title2_len equ $ - p_title2
    p_title3 db "COMPUTER SYSTEMS & ARCHITECTURE"
    p_title3_len equ $ - p_title3
    p_title4 db "COMPUTER SYSTEMS & ARCHITECTURE (LAB)"
    p_title4_len equ $ - p_title4
    p_title5 db "PHYSICAL EDUCATION 1"
    p_title5_len equ $ - p_title5
    p_title6 db "SPECIALIZED ENGLISH PROGRAM 2"
    p_title6_len equ $ - p_title6
    p_title7 db "ENVIRONMENTAL SCIENCE"
    p_title7_len equ $ - p_title7
    p_title8 db "LINEAR ALGEBRA"
    p_title8_len equ $ - p_title8
    p_title9 db "COLLEGE PHYSICS 1 LECTURE"
    p_title9_len equ $ - p_title9
    p_title10 db "COLLEGE PHYSICS 1 LABORATORY"
    p_title10_len equ $ - p_title10

    p_section1 db "TW191"
    p_section1_len equ $ - p_section1
    p_section2 db "TW191"
    p_section2_len equ $ - p_section2
    p_section3 db "TN24"
    p_section3_len equ $ - p_section3
    p_section4 db "TN24"
    p_section4_len equ $ - p_section4
    p_section5 db "TF01"
    p_section5_len equ $ - p_section5
    p_section6 db "TS21"
    p_section6_len equ $ - p_section6
    p_section7 db "TN45"
    p_section7_len equ $ - p_section7
    p_section8 db "TN24"
    p_section8_len equ $ - p_section8
    p_section9 db "  TN25"
    p_section9_len equ $ - p_section9
    p_section10 db "  TN25"
    p_section10_len equ $ - p_section10

    p_units1 db "2"
    p_units1_len equ $ - p_units1
    p_units2 db "1"
    p_units2_len equ $ - p_units2
    p_units3 db "2"
    p_units3_len equ $ - p_units3
    p_units4 db "1"
    p_units4_len equ $ - p_units4
    p_units5 db "3"
    p_units5_len equ $ - p_units5
    p_units6 db "3"
    p_units6_len equ $ - p_units6
    p_units7 db "3"
    p_units7_len equ $ - p_units7
    p_units8 db "3"
    p_units8_len equ $ - p_units8
    p_units9 db "2"
    p_units9_len equ $ - p_units9
    p_units10 db "1"
    p_units10_len equ $ - p_units10

    p_days1 db "T"
    p_days1_len equ $ - p_days1
    p_days2 db "TH"
    p_days2_len equ $ - p_days2
    p_days3 db "F"
    p_days3_len equ $ - p_days3
    p_days4 db "TH"
    p_days4_len equ $ - p_days4
    p_days5 db "M / TH"
    p_days5_len equ $ - p_days5
    p_days6 db "M / TH"
    p_days6_len equ $ - p_days6
    p_days7 db "F / T"
    p_days7_len equ $ - p_days7
    p_days8 db "F / T"
    p_days8_len equ $ - p_days8
    p_days9 db "T"
    p_days9_len equ $ - p_days9
    p_days10 db "W"
    p_days10_len equ $ - p_days10

    p_time1 db "17:00:00-19:40:00"
    p_time1_len equ $ - p_time1
    p_time2 db "17:00:00-19:50:00"
    p_time2_len equ $ - p_time2
    p_time3 db "10:00:00-12:40:00"
    p_time3_len equ $ - p_time3
    p_time4 db "10:00:00-12:50:00"
    p_time4_len equ $ - p_time4
    p_time5 db "13:00:00-14:50:00 / 13:00:00-14:50:00"
    p_time5_len equ $ - p_time5
    p_time6 db "15:00:00-16:50:00 / 15:00:00-16:50:00"
    p_time6_len equ $ - p_time6
    p_time7 db "15:00:00-16:50:00 / 15:00:00-16:50:00"
    p_time7_len equ $ - p_time7
    p_time8 db "13:00:00-14:50:00 / 13:00:00-14:50:00"
    p_time8_len equ $ - p_time8
    p_time9 db "10:00:00-12:40:00"
    p_time9_len equ $ - p_time9
    p_time10 db "10:00:00-12:50:00"
    p_time10_len equ $ - p_time10

    p_room1 db "ONLINE"
    p_room1_len equ $ - p_room1
    p_room2 db "F706"
    p_room2_len equ $ - p_room2
    p_room3 db "ONLINE"
    p_room3_len equ $ - p_room3
    p_room4 db "E610"
    p_room4_len equ $ - p_room4
    p_room5 db "F301 / F301"
    p_room5_len equ $ - p_room5
    p_room6 db "F607 / F607"
    p_room6_len equ $ - p_room6
    p_room7 db "ONLINE / ASYNCH"
    p_room7_len equ $ - p_room7
    p_room8 db "ONLINE / ONLINE"
    p_room8_len equ $ - p_room8
    p_room9 db "ONLINE"
    p_room9_len equ $ - p_room9
    p_room10 db "F1003"
    p_room10_len equ $ - p_room10

    p_tuition db 10, "Tuition fee: "
    p_tuition_len equ $ - p_tuition
    p_misc db "Miscellaneous fee: "
    p_misc_len equ $ - p_misc
    p_idfee db "ID validation fee: "
    p_idfee_len equ $ - p_idfee
    p_lab db "Lab fee: "
    p_lab_len equ $ - p_lab
    p_more_lab db "Add another lab fee? (Y/N): "
    p_more_lab_len equ $ - p_more_lab

    layout_status db 10, "enrollment status: "
    layout_status_len equ $ - layout_status
    layout_stunum db "student #: "
    layout_stunum_len equ $ - layout_stunum
    layout_college db " college: "
    layout_college_len equ $ - layout_college
    layout_program db " program: "
    layout_program_len equ $ - layout_program
    layout_name db "name: "
    layout_name_len equ $ - layout_name
    layout_year db " year level: "
    layout_year_len equ $ - layout_year
    layout_phone db "phone num: "
    layout_phone_len equ $ - layout_phone
    layout_zip db " zip code: "
    layout_zip_len equ $ - layout_zip
    layout_address db " address: "
    layout_address_len equ $ - layout_address

    tbl2_head db 10, 10, "--- COURSE SCHEDULE ---", 10
    tbl2_head_len equ $ - tbl2_head
    col_head db "CODE | SEC | UNITS | TITLE | DAYS | TIME | ROOM", 10
    col_head_len equ $ - col_head
    separator db " | "
    separator_len equ $ - separator

    msg_t_units db 10, "TOTAL UNITS: "
    msg_t_units_len equ $ - msg_t_units
    msg_t_fee db 10, "TOTAL FEE: "
    msg_t_fee_len equ $ - msg_t_fee

    newline db 10

section .bss
    b_status resb 50
    l_status resd 1
    b_stunum resb 50
    l_stunum resd 1
    b_name resb 50
    l_name resd 1
    b_phone resb 50
    l_phone resd 1
    b_college resb 50
    l_college resd 1
    b_program resb 50
    l_program resd 1
    b_year resb 50
    l_year resd 1
    b_address resb 100
    l_address resd 1
    b_zip resb 20
    l_zip resd 1

    choice_buf resb 10
    num_buf resb 20
    num_str resb 20
    total_units resd 1
    total_fee resd 1

    fd resd 1
    file_buf resb 4096

section .text
    global _start

_start:
    mov dword [total_units], 0
    mov dword [total_fee], 0

show_menu:
    print_text menu_msg, menu_msg_len
    read_text choice_buf, 10

    mov al, [choice_buf]
    cmp al, '1'
    je do_input
    cmp al, '2'
    je do_output
    cmp al, '3'
    je do_write
    cmp al, '4'
    je do_read
    cmp al, '5'
    je end_program
    jmp show_menu

do_input:
    print_text p_status, p_status_len
    read_text b_status, 50
    mov [l_status], eax

    print_text p_stunum, p_stunum_len
    read_text b_stunum, 50
    mov [l_stunum], eax

    print_text p_name, p_name_len
    read_text b_name, 50
    mov [l_name], eax

    print_text p_phone, p_phone_len
    read_text b_phone, 50
    mov [l_phone], eax

    print_text p_college, p_college_len
    read_text b_college, 50
    mov [l_college], eax

    print_text p_program, p_program_len
    read_text b_program, 50
    mov [l_program], eax

    print_text p_year, p_year_len
    read_text b_year, 50
    mov [l_year], eax

    print_text p_address, p_address_len
    read_text b_address, 100
    mov [l_address], eax

    print_text p_zip, p_zip_len
    read_text b_zip, 20
    mov [l_zip], eax

    mov dword [total_units], 0

    mov al, [p_units1]
    sub al, '0'
    movzx eax, al
    add [total_units], eax

    mov al, [p_units2]
    sub al, '0'
    movzx eax, al
    add [total_units], eax

    mov al, [p_units3]
    sub al, '0'
    movzx eax, al
    add [total_units], eax

    mov al, [p_units4]
    sub al, '0'
    movzx eax, al
    add [total_units], eax

    mov al, [p_units5]
    sub al, '0'
    movzx eax, al
    add [total_units], eax

    mov al, [p_units6]
    sub al, '0'
    movzx eax, al
    add [total_units], eax

    mov al, [p_units7]
    sub al, '0'
    movzx eax, al
    add [total_units], eax

    mov al, [p_units8]
    sub al, '0'
    movzx eax, al
    add [total_units], eax

    mov al, [p_units9]
    sub al, '0'
    movzx eax, al
    add [total_units], eax

    mov al, [p_units10]
    sub al, '0'
    movzx eax, al
    add [total_units], eax

    mov dword [total_fee], 0

    print_text p_tuition, p_tuition_len
    mov ecx, num_buf
    read_text ecx, 10
    call convert_to_num
    add [total_fee], eax

    print_text p_misc, p_misc_len
    mov ecx, num_buf
    read_text ecx, 10
    call convert_to_num
    add [total_fee], eax

    print_text p_idfee, p_idfee_len
    mov ecx, num_buf
    read_text ecx, 10
    call convert_to_num
    add [total_fee], eax

lab_loop:
    print_text p_lab, p_lab_len
    mov ecx, num_buf
    read_text ecx, 10
    call convert_to_num
    add [total_fee], eax

    print_text p_more_lab, p_more_lab_len
    read_text choice_buf, 10

    mov al, [choice_buf]
    cmp al, 'N'
    je show_menu
    cmp al, 'n'
    je show_menu
    jmp lab_loop

do_output:
    print_text layout_status, layout_status_len
    print_text b_status, [l_status]
    print_text newline, 1

    print_text layout_stunum, layout_stunum_len
    print_text b_stunum, [l_stunum]
    print_text layout_college, layout_college_len
    print_text b_college, [l_college]
    print_text layout_program, layout_program_len
    print_text b_program, [l_program]
    print_text newline, 1

    print_text layout_name, layout_name_len
    print_text b_name, [l_name]
    print_text layout_year, layout_year_len
    print_text b_year, [l_year]
    print_text newline, 1

    print_text layout_phone, layout_phone_len
    print_text b_phone, [l_phone]
    print_text layout_zip, layout_zip_len
    print_text b_zip, [l_zip]
    print_text layout_address, layout_address_len
    print_text b_address, [l_address]
    print_text newline, 1

    print_text tbl2_head, tbl2_head_len
    print_text col_head, col_head_len

    print_text p_code1, p_code1_len
    print_text separator, separator_len
    print_text p_section1, p_section1_len
    print_text separator, separator_len
    print_text p_units1, p_units1_len
    print_text separator, separator_len
    print_text p_title1, p_title1_len
    print_text separator, separator_len
    print_text p_days1, p_days1_len
    print_text separator, separator_len
    print_text p_time1, p_time1_len
    print_text separator, separator_len
    print_text p_room1, p_room1_len
    print_text newline, 1

    print_text p_code2, p_code2_len
    print_text separator, separator_len
    print_text p_section2, p_section2_len
    print_text separator, separator_len
    print_text p_units2, p_units2_len
    print_text separator, separator_len
    print_text p_title2, p_title2_len
    print_text separator, separator_len
    print_text p_days2, p_days2_len
    print_text separator, separator_len
    print_text p_time2, p_time2_len
    print_text separator, separator_len
    print_text p_room2, p_room2_len
    print_text newline, 1

    print_text p_code3, p_code3_len
    print_text separator, separator_len
    print_text p_section3, p_section3_len
    print_text separator, separator_len
    print_text p_units3, p_units3_len
    print_text separator, separator_len
    print_text p_title3, p_title3_len
    print_text separator, separator_len
    print_text p_days3, p_days3_len
    print_text separator, separator_len
    print_text p_time3, p_time3_len
    print_text separator, separator_len
    print_text p_room3, p_room3_len
    print_text newline, 1

    print_text p_code4, p_code4_len
    print_text separator, separator_len
    print_text p_section4, p_section4_len
    print_text separator, separator_len
    print_text p_units4, p_units4_len
    print_text separator, separator_len
    print_text p_title4, p_title4_len
    print_text separator, separator_len
    print_text p_days4, p_days4_len
    print_text separator, separator_len
    print_text p_time4, p_time4_len
    print_text separator, separator_len
    print_text p_room4, p_room4_len
    print_text newline, 1

    print_text p_code5, p_code5_len
    print_text separator, separator_len
    print_text p_section5, p_section5_len
    print_text separator, separator_len
    print_text p_units5, p_units5_len
    print_text separator, separator_len
    print_text p_title5, p_title5_len
    print_text separator, separator_len
    print_text p_days5, p_days5_len
    print_text separator, separator_len
    print_text p_time5, p_time5_len
    print_text separator, separator_len
    print_text p_room5, p_room5_len
    print_text newline, 1

    print_text p_code6, p_code6_len
    print_text separator, separator_len
    print_text p_section6, p_section6_len
    print_text separator, separator_len
    print_text p_units6, p_units6_len
    print_text separator, separator_len
    print_text p_title6, p_title6_len
    print_text separator, separator_len
    print_text p_days6, p_days6_len
    print_text separator, separator_len
    print_text p_time6, p_time6_len
    print_text separator, separator_len
    print_text p_room6, p_room6_len
    print_text newline, 1

    print_text p_code7, p_code7_len
    print_text separator, separator_len
    print_text p_section7, p_section7_len
    print_text separator, separator_len
    print_text p_units7, p_units7_len
    print_text separator, separator_len
    print_text p_title7, p_title7_len
    print_text separator, separator_len
    print_text p_days7, p_days7_len
    print_text separator, separator_len
    print_text p_time7, p_time7_len
    print_text separator, separator_len
    print_text p_room7, p_room7_len
    print_text newline, 1

    print_text p_code8, p_code8_len
    print_text separator, separator_len
    print_text p_section8, p_section8_len
    print_text separator, separator_len
    print_text p_units8, p_units8_len
    print_text separator, separator_len
    print_text p_title8, p_title8_len
    print_text separator, separator_len
    print_text p_days8, p_days8_len
    print_text separator, separator_len
    print_text p_time8, p_time8_len
    print_text separator, separator_len
    print_text p_room8, p_room8_len
    print_text newline, 1

    print_text p_code9, p_code9_len
    print_text separator, separator_len
    print_text p_section9, p_section9_len
    print_text separator, separator_len
    print_text p_units9, p_units9_len
    print_text separator, separator_len
    print_text p_title9, p_title9_len
    print_text separator, separator_len
    print_text p_days9, p_days9_len
    print_text separator, separator_len
    print_text p_time9, p_time9_len
    print_text separator, separator_len
    print_text p_room9, p_room9_len
    print_text newline, 1

    print_text p_code10, p_code10_len
    print_text separator, separator_len
    print_text p_section10, p_section10_len
    print_text separator, separator_len
    print_text p_units10, p_units10_len
    print_text separator, separator_len
    print_text p_title10, p_title10_len
    print_text separator, separator_len
    print_text p_days10, p_days10_len
    print_text separator, separator_len
    print_text p_time10, p_time10_len
    print_text separator, separator_len
    print_text p_room10, p_room10_len
    print_text newline, 1

    print_text msg_t_units, msg_t_units_len
    mov eax, [total_units]
    call print_num

    print_text msg_t_fee, msg_t_fee_len
    mov eax, [total_fee]
    call print_num

    print_text newline, 1
    jmp show_menu

do_write:
    mov eax, 5
    mov ebx, filename
    mov ecx, 0x241
    mov edx, 420
    int 0x80
    mov [fd], eax

    mov eax, 4
    mov ebx, [fd]
    mov ecx, b_name
    mov edx, [l_name]
    int 0x80

    mov eax, 4
    mov ebx, [fd]
    mov ecx, b_stunum
    mov edx, [l_stunum]
    int 0x80

    mov eax, 4
    mov ebx, [fd]
    mov ecx, b_college
    mov edx, [l_college]
    int 0x80

    mov eax, 4
    mov ebx, [fd]
    mov ecx, b_program
    mov edx, [l_program]
    int 0x80

    mov eax, 4
    mov ebx, [fd]
    mov ecx, b_status
    mov edx, [l_status]
    int 0x80

    mov eax, 4
    mov ebx, [fd]
    mov ecx, b_year
    mov edx, [l_year]
    int 0x80

    mov eax, 4
    mov ebx, [fd]
    mov ecx, b_address
    mov edx, [l_address]
    int 0x80

    mov eax, 4
    mov ebx, [fd]
    mov ecx, b_phone
    mov edx, [l_phone]
    int 0x80

    mov eax, 4
    mov ebx, [fd]
    mov ecx, b_zip
    mov edx, [l_zip]
    int 0x80

    mov eax, 6
    mov ebx, [fd]
    int 0x80

    jmp show_menu

do_read:
    mov eax, 5
    mov ebx, filename
    mov ecx, 0
    int 0x80
    mov [fd], eax

    mov eax, 3
    mov ebx, [fd]
    mov ecx, file_buf
    mov edx, 4096
    int 0x80
    
    mov edx, eax
    mov eax, 4
    mov ebx, 1
    mov ecx, file_buf
    int 0x80

    mov eax, 6
    mov ebx, [fd]
    int 0x80

    jmp show_menu

end_program:
    mov eax, 1
    xor ebx, ebx
    int 0x80

convert_to_num:
    xor eax, eax
    xor ebx, ebx
.c_loop:
    mov bl, [ecx]
    cmp bl, 10
    je .c_done
    cmp bl, 13
    je .c_done
    cmp bl, 0
    je .c_done
    sub bl, '0'
    imul eax, eax, 10
    add eax, ebx
    inc ecx
    jmp .c_loop
.c_done:
    ret

print_num:
    mov esi, num_str + 11
    mov byte [esi], 10
    dec esi
    cmp eax, 0
    jne .p_convert
    mov byte [esi], '0'
    dec esi
    jmp .p_display
.p_convert:
    mov ebx, 10
.p_loop:
    xor edx, edx
    div ebx
    add dl, '0'
    mov [esi], dl
    dec esi
    cmp eax, 0
    jne .p_loop
.p_display:
    inc esi
    mov edx, num_str + 12
    sub edx, esi
    mov ecx, esi
    call print_proc
    ret

print_proc:
    push ebx
    mov eax, 4
    mov ebx, 1
    int 0x80
    pop ebx
    ret

read_proc:
    mov eax, 3
    mov ebx, 0
    int 0x80
    ret