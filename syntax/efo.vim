" Vim syntax file
" Language: Cogito C-Language
" Maintainer: Drew Boshardy
" Latest Revision 16 January 2015

if exists("b:current_syntax")
    finish
endif

" Keywords
syn keyword clangScope SCOPE SENTENCE CLAUSE PARAGRAPH GROUP SEGMENT DISCARD
syn keyword clangImport IMPORT nextgroup=importNames
syn keyword clangGroupAttributes ?? GN GA GV GL GP GR PV PN SI CN
syn keyword clangDomain DOMAIN nextgroup=domainParam
syn keyword clangSimpleGroupKeywords KEYWORD LEMMA nextgroup=keywordParam
syn keyword clangSensigrafoGroupKeywords ANCESTOR SYNCON nextgroup=sensigrafoParam
syn keyword clangAttributeKeywords TYPE ROLE SUBJECT POSITION RELEVANT LIST
syn keyword clangTenses simple_present simple_past ing_form ed_form
syn keyword clangTenses present_perfect past_perfect future conditional
syn keyword clangContinuous continuous not_continuous
syn keyword clangTypeKeywords VER NPH ADJ ADV NOU NPR ENT PRO CON AUX
syn keyword clangPositionalOperators < > <> >> << 
syn keyword clangSyntaxOperators &SV &VO &SO &VS &SS &OO &OV &OS 
syn keyword clangBooleanOperators AND NOT OR XOR

" Regions
"syn region ruleBlock start="{" end="}" fold transparent contains=clangSimpleGroupKeywords,clangSensigrafoGroupKeywords,clangAttributeKeywords,clangTenses,clangTypeKeywords,clangContinuous,clangPositionalOperators,clangSyntaxOperators,clangGroupingChars,clangBooleanOperators,comment,domainParam,keywordParam,stringParam,subRule,ruleBlock

" Matches
syn match domainParam '\([_0-9a-zA-Z]\)'
syn match keywordParam '\(.+\)' 
syn match stringParam '\".+\"'
syn match sensigraphoParam '\(\d+\)'
syn match subRule '#.+#'
syn match importNames '\".+\"'
syn match comment '\/\/.+$' 


let b:current_syntax = "efo"

hi def link comment                        Comment
hi def link clangScope                     Function
hi def link clangImport                    Include
hi def link clangGroupAttributes           Keyword
hi def link clangDomain                    Function
hi def link clangSimpleGroupKeywords       Function
hi def link clangSensigrafoGroupKeywords   Function
hi def link clangAttributeKeywords         Keyword
hi def link clangTenses                    Statement
hi def link clangContinuous                Statement
hi def link clangTypeKeywords              Identifier
hi def link clangPositionalOperators       Operator
hi def link clangSyntaxOperators           Operator
hi def link clangBooleanOperators          Conditional
hi def link sensigrafoParam                Number
hi def link keywordParam                   String
hi def link stringParam                    String
hi def link subRule                        Special
hi def link domainParam                    Special
