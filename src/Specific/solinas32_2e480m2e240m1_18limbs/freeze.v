Require Import Crypto.Arithmetic.PrimeFieldTheorems.
Require Import Crypto.Specific.solinas32_2e480m2e240m1_18limbs.Synthesis.

(* TODO : change this to field once field isomorphism happens *)
Definition freeze :
  { freeze : feBW_tight -> feBW_limbwidths
  | forall a, phiBW_limbwidths (freeze a) = phiBW_tight a }.
Proof.
  Set Ltac Profiling.
  Time synthesize_freeze ().
  Show Ltac Profile.
Time Defined.

Print Assumptions freeze.
