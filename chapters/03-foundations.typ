#import "@preview/cetz:0.3.4"
#import "@preview/cetz-plot:0.1.1": plot
#import "@preview/quill:0.7.0": *
#import "@preview/ctheorems:1.1.3": *
#import "@preview/physica:0.9.5": *


= Foundations of Quantum Information Theory: The Qubit


== Comparative Definitions of a Qubit

A qubit (quantum bit) is the basic unit of quantum information. Different authoritative sources define it with varying emphasis depending on their field (physics, computing, engineering). This document compares several of these definitions.


=== Core Definition

A qubit is a two-level quantum system, whose state is described by a unit vector in the complex Hilbert space $bb(C)^2$. It can be in a superposition of basis states:

$
ket(psi) = alpha ket(0) + beta ket(1) #h(4mm) text("with") alpha,  beta in bb(C), \ |alpha|^2 + |beta|^2 = 1
$


=== 1. Nielsen & Chuang (2000)

A qubit is a two-state quantum-mechanical system, such as the spin of an electron or the polarization of a photon. Mathematically, a pure qubit state can be represented as a normalized vector in a two-dimensional complex vector space.

$
ket(psi) = alpha ket(0) +  beta ket(1)
$

$
|alpha|^2 + |beta|^2 = 1
$

Reference: Nielsen, M.A. & Chuang, I.L., _Quantum Computation and Quantum Information_, Cambridge University Press, 2000.


=== 2. John Preskill (Caltech)

A qubit is a quantum system whose state space is the two-dimensional complex Hilbert space
$
bb(H)_2 = bb(C)^2
$

- Strong emphasis on Hilbert spaces, unitary operations, and quantum circuits.
- Discusses density matrices, entanglement, and tensor product structure.

Reference: Preskill, J., _Lecture Notes on Quantum Computation_, Caltech (1998). [http://www.theory.caltech.edu/~preskill/ph229/](http://www.theory.caltech.edu/~preskill/ph229/)


=== 3. Oxford Dictionary of Physics

A unit of quantum information equivalent to the quantum state of a two-level system, which can be in a superposition of the basis states.

- A more accessible definition for general audiences.
- Focuses on superposition and measurement.

Reference: Oxford Dictionary of Physics, 8th Edition, Oxford University Press, 2020.

---

=== 4. IBM Qiskit Textbook

A qubit is a quantum version of the classical bit and is the basic unit of quantum information. Unlike a bit, which can be either 0 or 1, a qubit can be in a superposition of both.

- Practical focus on physical implementations.
- Introduces the Bloch sphere parametrization:

$
ket(psi) = cos(theta / 2) ket(0) + e^(i phi) sin(theta / 2) ket(1)
$

Reference: https://qiskit.org/textbook/



=== 5. Wikipedia

In quantum computing, a qubit is the basic unit of quantum information — the quantum version of the classical binary bit.

- Includes both mathematical and physical realization aspects.
- Covers use in entanglement, quantum circuits, and decoherence.

Reference: https://en.wikipedia.org/wiki/Qubit


=== 6. MIT OpenCourseWare

A qubit is a two-level quantum system whose state is a linear combination of orthonormal basis vectors $ket(0)$ and $ket(1)$, forming a unit vector in $bb(C)^2$.

- Teaches from the quantum algorithm perspective.
- Strong use of Dirac notation, gates, and measurement postulates.

Reference: MIT OCW 6.845: Quantum Complexity Theory. [https://ocw.mit.edu](https://ocw.mit.edu)



== Mathematical Summary

- State space

$
ket(psi) = alpha ket(0) +  beta ket(1) #h(8mm) alpha, beta in bb(C), |alpha|^2 + |beta|^2 = 1
$

- Bloch sphere representation:

$
ket(psi) = cos(theta / 2) ket(0) + e^(i phi) sin(theta /2) ket(1)
$

where
$
theta in [0, pi], phi ∈ [0, 2 pi)
$



== Common Features Across Sources

#table(
  columns: 3,
    [Feature], [Included?], [Notes],
    [Two-level system], [✅], [Core definition],
    [Superposition], [✅], [Defining characteristic],
    [Complex amplitudes], [✅], [Necessary for interference],
    [Normalization], [✅], [Ensures total probability = 1],
    [Measurement outcomes], [✅], [Probabilistic interpretation],
    [Entanglement (multi-qubit)], [✅], [Critical for quantum advantage],
    [Physical realization], [⚠], [Varies by context],
)



== Physical Implementations (Mentioned in Sources)

- Spin-half particles (e.g. electron spin)
- Photon polarization
- Superconducting circuits
- Trapped ions
- Quantum dots


==== References

1. Nielsen & Chuang (2000). Quantum Computation and Quantum Information. Cambridge University Press.  
2. Preskill, J. (1998). Lecture Notes on Quantum Computation. Caltech.  
3. Oxford Dictionary of Physics, 8th Ed., Oxford University Press.  
4. IBM Qiskit Textbook. [https://qiskit.org/textbook/](https://qiskit.org/textbook/)  
5. Wikipedia: [https://en.wikipedia.org/wiki/Qubit](https://en.wikipedia.org/wiki/Qubit)  
6. MIT OCW: [https://ocw.mit.edu](https://ocw.mit.edu)

