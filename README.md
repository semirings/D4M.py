> **Note**
>
> This repository is a downstream fork of **D4M.py**, originally developed by
> **MIT Lincoln Laboratory** as part of the Dynamic Distributed Dimensional Data Model (D4M).
>
> This fork extends the original work to support **healthcare and FHIR-oriented workflows**,
> including:
>
> - representing FHIR resources and profiles as **Associative Arrays**
> - structural comparison of FHIR profiles and constraints
> - analytic and visualization pipelines (e.g., AA-based comparison, Blender-driven rendering)
>
> The intent of this fork is **not** to replace or redefine D4M, but to apply its
> associative-array formalism to **domain-specific problems** in healthcare interoperability,
> analytics, and large-scale data representation.
>
> This is **not** an official MIT Lincoln Laboratory project.

## Scope of This Fork

This repository builds on the core concepts and implementation of **D4M.py**
as developed by MIT Lincoln Laboratory:

🔗 https://github.com/mitll/D4M.py

The scope of this fork is intentionally **narrow and additive**.

### In Scope

This fork adds support for:

- **FHIR-oriented workflows**, including:
  - representing FHIR resources, profiles, and constraints as Associative Arrays
  - structural comparison of FHIR profiles prior to implementation or data exchange
- **Analytic extensions** that leverage D4M’s associative-array formalism
  for healthcare interoperability and large-scale data reasoning
- **Visualization pipelines** that transform Associative Arrays into
  renderable specifications for tools such as Blender, enabling
  visual explanation of structure, mismatch, and resolution

These additions are designed to treat Associative Arrays as a
**domain-agnostic structural representation** that can bridge multiple
serializations (e.g., JSON, XML, RDF, AA) without altering the FHIR standard.

### Out of Scope

This fork does **not** attempt to:

- redefine or replace the core D4M associative-array model
- alter fundamental algebraic or semiring semantics
- replace existing D4M database backends or Accumulo integration
- serve as a drop-in replacement for the upstream D4M.py project

Upstream changes are preserved wherever possible, and modifications to
existing code are kept minimal and well-scoped.

### Relationship to Upstream

This repository maintains a clear lineage to the original MIT Lincoln
Laboratory project. The upstream repository is retained as a Git remote
and may be merged or rebased selectively when appropriate.

Any divergence from upstream is intentional and motivated by
domain-specific requirements rather than general-purpose refactoring.
