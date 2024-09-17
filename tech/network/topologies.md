---
title: Network Topologies
---
# Network Topologies
## Bus Topology
This creates a simple network topology with an Internet connection, a firewall, a switch, and three computers.
```mermaid
graph TD
  A[Device 1] -->|Bus| B[Device 2]
  B -->|Bus| C[Device 3]
  C -->|Bus| D[Device 4]
  D -->|Bus| E[Device 5]
```

### Ring Topology
This represents a ring topology where each computer is connected to exactly two other computers forming a closed loop.
```mermaid
graph TD
  A[Device 1] -->|Ring| B[Device 2]
  B -->|Ring| C[Device 3]
  C -->|Ring| D[Device 4]
  D -->|Ring| E[Device 5]
  E -->|Ring| A
 
 ```
 
## Star Topology
This represents a star topology where all computers are connected to a central switch.
```mermaid
graph TD
  A[Device 1] -->|Switch| S[Central Switch]
  B[Device 2] -->|Switch| S
  C[Device 3] -->|Switch| S
  D[Device 4] -->|Switch| S
  E[Device 5] -->|Switch| S

```
## Mesh
```mermaid
graph TD
  A[Device 1] -->|Mesh| B[Device 2]
  A -->|Mesh| C[Device 3]
  A -->|Mesh| D[Device 4]
  B -->|Mesh| C
  B -->|Mesh| D
  C -->|Mesh| D
```
## Tree
```mermaid
graph TD
  A[Hub 1] -->|Bus| B[Device 1.1]
  A -->|Bus| C[Device 1.2]
  A -->|Bus| D[Device 1.3]
  B -->|Bus| E[Device 1.1.1]
  B -->|Bus| F[Device 1.1.2]
  C -->|Bus| G[Device 1.2.1]
  C -->|Bus| H[Device 1.2.2]
  D -->|Bus| I[Device 1.3.1]
  D -->|Bus| J[Device 1.3.2]
```
## Hybrid
```mermaid
graph TD
  A[Device 1] -->|Bus| B[Device 2]
  A -->|Mesh| C[Device 3]
  A -->|Star| D[Device 4]
  B -->|Ring| E[Device 5]
  C -->|Tree| F[Device 6.1]
  C -->|Tree| G[Device 6.2]
  D -->|Bus| H[Device 7]
```

