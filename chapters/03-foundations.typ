#import "@preview/cetz:0.3.4"
#import "@preview/cetz-plot:0.1.1": plot
#import "@preview/quill:0.7.0": *
#import "@preview/ctheorems:1.1.3": *
#import "@preview/physica:0.9.5": *

= Foundations of Quantum Information Theory

#lorem(300)

#lorem(300)

#lorem(300)

== Comparing Definitions of a Qubit

The term qubit, short for quantum bit, was coined by American physicist Benjamin Schumacher in 1995 @Schumacher1995quantumcoding.
A qubit is the basic unit of quantum information.
Different sources define the term with varying emphasis depending on their field (physics, computing, engineering).


=== Core Definition

A qubit is a two-level quantum system, whose state is described by a unit vector in the complex Hilbert space $bb(C)^2$. 
It can be in a superposition of basis states:

$
ket(psi) = alpha ket(0) + beta ket(1) #h(4mm) text("with") alpha,  beta in bb(C), \ |alpha|^2 + |beta|^2 = 1
$


=== Nielsen & Chuang @NielsenChuang

A qubit is a two-state quantum-mechanical system, such as the spin of an electron or the polarization of a photon. Mathematically, a pure qubit state can be represented as a normalized vector in a two-dimensional complex vector space.

$
ket(psi) = alpha ket(0) +  beta ket(1)
$

$
|alpha|^2 + |beta|^2 = 1
$


=== John Preskill @preskillNotes

A qubit is a quantum system whose state space is the two-dimensional complex Hilbert space:
$
bb(H)_2 = bb(C)^2
$

- Strong emphasis on Hilbert spaces, unitary operations, and quantum circuits.
- Discusses density matrices, entanglement, and tensor product structure.


=== Oxford Dictionary of Physics @PhysicsOxfordDictionary

A unit of quantum information equivalent to the quantum state of a two-level system, which can be in a superposition of the basis states.

The Oxford Dictionary of Physics provides a more accessible definition for general audiences.
It focuses on the concepts of superposition and measurement.


=== IBM Qiskit Textbook @qiskit2024

A qubit is a quantum version of the classical bit and is the basic unit of quantum information.
Unlike a bit, which can be either 0 or 1, a qubit can be in a superposition of both.

Qiskit has a practical focus on physical implementations.
It introduces the Bloch sphere parametrization:

$
ket(psi) = cos(theta / 2) ket(0) + e^(i phi) sin(theta / 2) ket(1)
$


=== Wikipedia @qubitWikipedia

In quantum computing, a qubit is the basic unit of quantum information -- the quantum version of the classical binary bit.

Wikipedia includes both mathematical and physical realization aspects in its definition.
It also covers the use of qubits in entanglement, quantum circuits, and decoherence.


=== MIT OpenCourseWare @mitQuantumComplexityTheory

A qubit is a two-level quantum system whose state is a linear combination of orthonormal basis vectors $ket(0)$ and $ket(1)$, forming a unit vector in $bb(C)^2$.

MIT OpenCourseWare teaches from the quantum algorithm perspective and makes strong use of Dirac notation, gates, and measurement postulates.


== Mathematical Summary

State space:

$
ket(psi) = alpha ket(0) +  beta ket(1) #h(8mm) alpha, beta in bb(C), |alpha|^2 + |beta|^2 = 1
$

Bloch sphere representation:

$
ket(psi) = cos(theta / 2) ket(0) + e^(i phi) sin(theta /2) ket(1)
$

where:
$
theta in [0, pi], phi ∈ [0, 2 pi)
$


== Physical Realizations
A qubit can be physically realized in various systems, each with its own advantages and challenges.
Some common physical realizations include:

- Spin-half particles (e.g. electron spin)
- Photon polarization
- Superconducting circuits
- Trapped ions
- Quantum dots
