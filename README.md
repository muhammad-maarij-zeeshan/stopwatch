# Stopwatch
A stopwatch using counters which has following capabilities.

- It keeps time till 10 minutes.

- It is a 4-digit stopwatch counting from 0:00:0 to 9:59:9.

- It has a clear capability i.e when clr is pressed it should reset to 0:00:0.

- The right most digit increments every 0.1 seconds, when it reaches 9 it will increment the middle two digits, which represent the second count.

- When it reaches 59 seconds it will increment the right-most minute display

- The stopwatch will be in the format M:SS:D.

# Entity: stopwatch 
- **File**: stopwatch.v

## Diagram
![Diagram](stopwatch.svg "Diagram")
## Ports

| Port name | Direction | Type  | Description |
| --------- | --------- | ----- | ----------- |
| clk       | input     | wire  |             |
| clr       | input     | wire  |             |
| M         | output    | [3:0] |             |
| SS        | output    | [5:0] |             |
| D         | output    | [3:0] |             |

## Processes
- calculate_tenth_second: ( @(posedge clk or posedge clr) )
  - **Type:** always

## Circuit Diagram
![Diagram](stopwatch_schematic.svg "Diagram")