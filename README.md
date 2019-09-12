# SV-Toolbox

SV-Toolbox is a collection of generalized, multi-purpose SytemVerilog modules, following the digital design philsophy of modularity.

## Purpose

One of my favorite aspects of digital design is the heavy emphasis of modularity and regularity. Quality digital building blocks are reusable for many projects, and should fit into those many projects with ease. For these reasons, I try to code HDL modules that are generalized and could serve many purposes.

At the same time, you can imagine a hiararchy that is either too granular or too generalized. I'm not trying to build modules wrapped around every tiny operation, nor am I attempting to paramaterize modules that clearly serve very specific roles.

To avoid unecessary generalizations, I use the following heuristic: A module should be generalized if it meets the following:

* When viewing the module on its own, you easily imagine multiple use cases.
* When viewing the module in context of a project, you imagine only its specific role for that project.

## Related Work

Several of these modules are featured in other projects of mine, including my AES Encryption Hardware Accelerator (link).