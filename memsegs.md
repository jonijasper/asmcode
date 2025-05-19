## Memory segments
### Data segment
section .data

- declare memory region for data elements
- static throughout the program, cannot be expanded

section .bss
- zero-filled static memory
- buffer for data declared later

### Code segment
section .text
- static memory region for instruction codes

### Stack
- data values passed to functions and procedures within the program