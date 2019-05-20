:- use_module(library(owl_patternizer)).

:- rdf_register_prefix('UBERON','http://purl.obolibrary.org/obo/UBERON_').
:- rdf_register_prefix('BFO','http://purl.obolibrary.org/obo/MONDO_').
:- rdf_register_prefix('CHEBI','http://purl.obolibrary.org/obo/CHEBI_').
:- rdf_register_prefix('WBbt','http://purl.obolibrary.org/obo/WBbt_').
:- rdf_register_prefix('WBls','http://purl.obolibrary.org/obo/WBls_').
:- rdf_register_prefix('PATO','http://purl.obolibrary.org/obo/PATO_').
:- rdf_register_prefix('GO','http://purl.obolibrary.org/obo/GO_').
:- rdf_register_prefix('CL','http://purl.obolibrary.org/obo/CL_').
:- rdf_register_prefix('RO','http://purl.obolibrary.org/obo/RO_').


doall :-
        generate_patterns([min(2),
                           generalize_properties(false),
                           dir(tmp),
                           trim(true),
                           base('http://purl.obolibrary.org/obo/WBPhenotype'),
                           exclude_prefixes(['UBERON','CHEBI','WBbt','WBls','PATO','CL','GO'])
                          ]).
