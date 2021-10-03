" Vim syntax file
" Language:	AceDB model files
" Maintainer:	Stewart Morris (Stewart.Morris@ed.ac.uk)
" Last change:	Thu Apr 26 10:38:01 BST 2001
" URL:		http://www.ed.ac.uk/~swmorris/vim/acedb.vim

" Syntax file to handle all $ACEDB/wspec/*.wrm files, primarily models.wrm
" AceDB software is available from http://www.acedb.org

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn keyword	acedbXref	XREF
syn keyword	acedbModifier	UNIQUE REPEAT

syn case ignore
syn keyword	acedbModifier	Constraints
syn keyword	acedbType	DateType Int Text Float

" Jesus tags from: http://genome.cornell.edu/acedocs/jesus/summary.html
syn keyword	acedbJesus	pick_me_to_call No_cache Non_graphic Title
syn keyword	acedbJesus	Flipped Centre Extent View Default_view
syn keyword	acedbJesus	From_map Minimal_view Main_Marker Map Includes
syn keyword	acedbJesus	Mapping_data More_data Position Ends Left Right
syn keyword	acedbJesus	Multi_Position Multi_Ends With Error Relative
syn keyword	acedbJesus	Min Anchor Gmap Grid_map Grid Submenus Cambridge
syn keyword	acedbJesus	No_buttons Columns Colour Surround_colour Tag
syn keyword	acedbJesus	Scale_unit Cursor Cursor_on Cursor_unit
syn keyword	acedbJesus	Locator Magnification Projection_lines_on
syn keyword	acedbJesus	Marker_points Marker_intervals Contigs
syn keyword	acedbJesus	Physical_genes Two_point Multi_point Likelihood
syn keyword	acedbJesus	Point_query Point_yellow Point_width
syn keyword	acedbJesus	Point_pne Point_pe Point_nne Point_ne
syn keyword	acedbJesus	Derived_tags DT_query DT_width DT_no_duplicates
syn keyword	acedbJesus	RH_data RH_query RH_spacing RH_show_all
syn keyword	acedbJesus	Names_on Width Symbol Colours Pne Pe Nne pMap
syn keyword	acedbJesus	Sequence Gridded FingerPrint In_Situ Cosmid_grid
syn keyword	acedbJesus	Layout Lines_at Space_at No_stagger A1_labelling
syn keyword	acedbJesus	DNA Structure From Source Source_Exons
syn keyword	acedbJesus	Coding CDS Transcript Assembly_tags Allele
syn keyword	acedbJesus	Display Colour Frame_sensitive Strand_sensitive
syn keyword	acedbJesus	Score_bounds Percent Bumpable Width Symbol
syn keyword	acedbJesus	Blixem_N Address E_mail Paper Reference Title
syn keyword	acedbJesus	Point_1 Point_2 Calculation Full One_recombinant
syn keyword	acedbJesus	Tested Selected_trans Backcross Back_one
syn keyword	acedbJesus	Dom_semi Dom_let Direct Complex_mixed Calc
syn keyword	acedbJesus	Calc_upper_conf Item_1 Item_2 Results A_non_B
syn keyword	acedbJesus	Score Score_by_offset Score_by_width
syn keyword	acedbJesus	Right_priority Blastn Blixem Blixem_X
syn keyword	acedbJesus	Journal Year Volume Page Author
syn keyword	acedbJesus	Selected One_all Recs_all One_let
syn keyword	acedbJesus	Sex_full Sex_one Sex_cis Dom_one Dom_selected
syn keyword	acedbJesus	Calc_distance Calc_lower_conf Canon_for_cosmid
syn keyword	acedbJesus	Reversed_physical Points Positive Negative
syn keyword	acedbJesus	Point_error_scale Point_segregate_ordered
syn keyword	acedbJesus	Point_symbol Interval_JTM Interval_RD
syn keyword	acedbJesus	EMBL_feature Homol Feature
syn keyword	acedbJesus	DT_tag Spacer Spacer_colour Spacer_width
syn keyword	acedbJesus	RH_positive RH_negative RH_contradictory Query
syn keyword	acedbJesus	Clone Y_remark PCR_remark Hybridizes_to
syn keyword	acedbJesus	Row Virtual_row Mixed In_pool Subpool B_non_A
syn keyword	acedbJesus	Interval_SRK Point_show_marginal Subsequence
syn keyword	acedbJesus	Visible Properties Transposon

syn match	acedbClass	"^?\w\+\|^#\w\+"
syn match	acedbComment	"//.*"
syn region	acedbComment	start="/\*" end="\*/"
syn match	acedbComment	"^#\W.*"
syn match	acedbHelp	"^\*\*\w\+$"
syn match	acedbTag	"[^^]?\w\+\|[^^]#\w\+"
syn match	acedbBlock	"//#.\+#$"
syn match	acedbOption	"^_[DVH]\S\+"
syn match	acedbFlag	"\s\+-\h\+"
syn match	acedbSubclass	"^Class"
syn match	acedbSubtag	"^Visible\|^Is_a_subclass_of\|^Filter\|^Hidden"
syn match	acedbNumber	"\<\d\+\>"
syn match	acedbNumber	"\<\d\+\.\d\+\>"
syn match	acedbHyb	"\<Positive_\w\+\>\|\<Negative\w\+\>"
syn region	acedbString	start=/"/ end=/"/ skip=/\\"/ oneline

" Rest of syntax highlighting rules start here

" Define the default highlighting.
" Only when an item doesn't have highlighting yet

hi def link acedbJesus	Special
hi def link acedbHyb	Special
hi def link acedbType	Type
hi def link acedbOption	Type
hi def link acedbSubclass	Type
hi def link acedbSubtag	Include
hi def link acedbFlag	Include
hi def link acedbTag	Include
hi def link acedbClass	Todo
hi def link acedbHelp	Todo
hi def link acedbXref	Identifier
hi def link acedbModifier	Label
hi def link acedbComment	Comment
hi def link acedbBlock	ModeMsg
hi def link acedbNumber	Number
hi def link acedbString	String


let b:current_syntax = "acedb"

" The structure of the model.wrm file is sensitive to mixed tab and space
" indentation and assumes tabs are 8 so...
se ts=8
