* this is a code to read SEER ASCII TXT into Stata
* the version of SEER is:
* 4/15/2019 - Initial Release
* run all lines
* CHANGE PATH and FILE on line 155


* Questions can be sent to
* kamilakolpashnikova@gmail.com

clear all

infix PUBCSNUM      1-8 ///
    REG      9-18 ///
    MAR_STAT     19 ///
    RACE1V     20-21 ///
    SEX   24 ///
    AGE_DX    25-27 ///
    YR_BRTH     28-31 ///
    SEQ_NUM     35-36 ///
    MDXRECMP     37-38 ///
    YEAR_DX    39-42 ///
    str PRIMSITE     43-46 ///
    LATERAL     47 ///
    HISTO2V     48-51 ///
    BEHO2V     52 ///
    HISTO3V     53-56 ///
    BEHO3V     57 ///
    GRADE     58 ///
    DX_CONF     59 ///
    REPT_SRC    60 ///
    EOD10_SZ     61-63 ///
    EOD10_EX     64-65 ///
    EOD10_PE     66-67 ///
    EOD10_ND     68 ///
    EOD10_PN     69-70 ///
    EOD10_NE     71-72 ///
    str EOD13     73-85 ///
    str EOD2     86-87 ///
    EOD4     88-91 ///
    EOD_CODE    92 ///
    TUMOR_1V    93 ///
    TUMOR_2V    94 ///
    TUMOR_3V    95 ///
    CSTUMSIZ    96-98 ///
    CSEXTEN    99-101 ///
    CSLYMPHN    102-104 ///
    CSMETSDX    105-106 ///
    CS1SITE  107-109 ///
    CS2SITE    110-112 ///
    CS3SITE   113-115 ///
    CS4SITE   116-118 ///
    CS5SITE   119-121 ///
    CS6SITE   122-124 ///
    CS25SITE  125-127 ///
    DAJCCT   128-129 ///
    DAJCCN   130-131 ///
    DAJCCM    132-133 ///
    DAJCCSTG  134-135 ///
    DSS1977S   136 ///
    SCSSM2KO  137 ///
    CSVFIRST  141-146 ///
    CSVLATES    147-152 ///
    CSVCURRENT    153-158 ///
    SURGPRIF    159-160 ///
    SURGSCOF   161 ///
    SURGSITF   162 ///
    NUMNODES  163-164 ///
    NO_SURG    166 ///
    SS_SURG   170-171 ///
    SURGSCOP    174 ///
    SURGSITE  175 ///
    RECNOREC  176-177 ///
    TYPE_FU   191 ///
	AGE_1REC  192-193 ///
	SITERWHO 199-203 ///
	ICDOTO9V 204-207 ///
	str ICDOT10V 208-211 ///
	ICCC3WHO 218-220 ///
	ICCC3XWHO 221-223 ///
	BEHTREND 224 ///
	HISTREC 226-227 ///
	HISTRECB 228-229 ///
	cs0204schema 230-232 ///
	RAC_RECA 233 ///
	RAC_RECY 234 ///
	ORIGRECB 235 ///
	HST_STGA 236 ///
	AJCC_STG 237-238 ///
	AJ_3SEER 239-240 ///
	SSS77VZ 241 ///
	SSSM2KPZ 242 ///
	FIRSTPRM 245 ///
	ST_CNTY 246-250 ///
	CODPUB 255-259 ///
	CODPUBKM 260-264 ///
	STAT_REC 265 ///
	IHSLINK 266 ///
	SUMM2K 267 ///
	AYASITERWHO 268-269 ///
	LYMSUBRWHO 270-271 ///
	VSRTSADX 272 ///
	ODTHCLASS 273 ///
	CSTSEVAL 274 ///
	CSRGEVAL 275 ///
	CSMTEVAL 276 ///
	INTPRIM 277 ///
	ERSTATUS 278 ///
	PRSTATUS 279 ///
	CSSCHEMA 280-281 ///
	CS8SITE 282-284 ///
	CS10SITE 285-287 ///
	CS11SITE 288-290 ///
	CS13SITE 291-293 ///
	CS15SITE 294-296 ///
	CS16SITE 297-299 ///
	VASINV 300 ///
	SRV_TIME_MON 301-304 ///
	SRV_TIME_MON_FLAG 305 ///
	INSREC_PUB 311 ///
	DAJCC7T 312-314 ///
	DAJCC7N 315-317 ///
	DAJCC7M 318-320 ///
	DAJCC7STG 321-323 ///
	ADJTM_6VALUE 324-325 ///
	ADJNM_6VALUE 326-327 ///
	ADJM_6VALUE 328-329 ///
	ADJAJCCSTG 330-331 ///
	CS7SITE 332-334 ///
	CS9SITE 335-337 ///
	CS12SITE 338-340 ///
	her2 341 ///
	brst_sub 342 ///
	ANNARBOR 348 ///
	SCMETSDXB_PUB 349 ///
	SCMETSDXBR_PUB 350 ///
	SCMETSDXLIV_PUB 351 ///
	SCMETSDXLUNG_PUB 352 ///
	T_VALUE 353 ///
	N_VALUE 355 ///
	M_VALUE 357 ///
	MALIGCOUNT 359-360 ///
	BENBORDCOUNT 361-362 ///
	TUMSIZS 364-366 ///
	str DSRPSG 367-371 ///
	str DASRCT 372-376 ///
	str DASRCN 377-381 ///
	str DASRCM 382-386 ///
	DASRCTS 387 ///
	DASRCNS 388 ///
	DASRCMS 389 ///
	str TNMEDNUM 390-391 ///
	METSDXLN 392 ///
	METSDXO 393 ///
	using "C:\Users\sfos0300\OneDrive - Nexus365\Data files\SEER\SEER_1975_2016\SEER_1975_2016_TEXTDATA\incidence\yr1975_2016.seer9\MALEGEN.TXT"
** in the |PATH| change it to the directory to where the 
** text files of SEER are
** in |file| - change it to the particular
** file you want to read
** for example, BREAST or MALEGEN

*la de PUBCSNUM 
la de REG  ///
	0000001501 "San Francisco-Oakland SMSA (1973)" ///
	0000001502 "Connecticut (1973)" ///
	0000001520 "Metropolitan Detroit (1973)" ///
	0000001521 "Hawaii (1973)" ///
	0000001522 "Iowa (1973)" ///
	0000001523 "New Mexico (1973)" ///
	0000001525 "Seattle (Puget Sound) (1974)" ///
	0000001526 "Utah (1973)" ///
	0000001527 "Metropolitan Atlanta (1975)" ///
	0000001529 "Alaska" ///
	0000001531 "San Jose-Monterey" ///
	0000001535 "Los Angeles" ///
	0000001537 "Rural Georgia" ///
	0000001541 "Greater California (excluding SF, Los Angeles & SJ)" ///
	0000001542 "Kentucky" ///
	0000001543 "Louisiana" ///
	0000001544 "New Jersey" ///
	0000001547 "Greater Georgia (excluding AT and RG)"

la de MAR_STAT ///
	1 "Single (never married)" ///
	2 "Married (including common law)" ///
	3 "Separated" ///
	4 "Divorced" ///
	5 "Widowed" ///
	6 "Unmarried or domestic partner (same sex or opposite sex or unregistered)" ///
	9 "Unknown"
	
la de RACE1V ///
	1 "White" ///
	2 "Black" ///
	3 "American Indian, Aleutian, Alaskan Native or Eskimo (includes all indigenous populations of the Western hemisphere)" ///
	4 "Chinese" ///
	5 "Japanese" ///
	6 "Filipino" ///
	7 "Hawaiian" ///
	8 "Korean (Effective with 1/1/1988 dx)" ///
	10 "Vietnamese (Effective with 1/1/1988 dx)" ///
	11 "Laotian (Effective with 1/1/1988 dx)" ///
	12 "Hmong (Effective with 1/1/1988 dx)" ///
	13 "Kampuchean (including Khmer and Cambodian) (Effective with 1/1/1988 dx)" ///
	14 "Thai (Effective with 1/1/1994 dx)" ///
	15 "Asian Indian or Pakistani, NOS (Effective with 1/1/1988 dx)" ///
	16 "Asian Indian (Effective with 1/1/2010 dx)" ///
	17 "Pakistani (Effective with 1/1/2010 dx)" ///
	20 "Micronesian, NOS (Effective with 1/1/1991)" ///
	21 "Chamorran (Effective with 1/1/1991 dx)" ///
	22 "Guamanian, NOS (Effective with 1/1/1991 dx)" ///
	25 "Polynesian, NOS (Effective with 1/1/1991 dx)" ///
	26 "Tahitian (Effective with 1/1/1991 dx)" ///
	27 "Samoan (Effective with 1/1/1991 dx)" ///
	28 "Tongan (Effective with 1/1/1991 dx)" ///
	30 "Melanesian, NOS (Effective with 1/1/1991 dx)" ///
	31 "Fiji Islander (Effective with 1/1/1991 dx)" ///
	32 "New Guinean (Effective with 1/1/1991 dx)" ///
	96 "Other Asian, including Asian, NOS and Oriental, NOS (Effective with 1/1/1991 dx)" ///
	97 "Pacific Islander, NOS (Effective with 1/1/1991 dx)" ///
	98 "Other" ///
	99 "Unknown"
	
la de SEX ///
	1 "Male" ///
	2 "Female"
	
la de AGE_DX ///
	999 "Unknown"
	
*la de YR_BRTH
la de SEQ_NUM ///
	0 "One primary only in the patient’s lifetime" ///
	1 "First of two or more primaries" ///
	2 "Second of two or more primaries" ///
	41 "Forty-first of forty-one or more primaries" ///
	99 "Unspecified or unknown"
	
*la de MDXRECMP
*la de YEAR_DX
*la de PRIMSITE See the International Classification of Diseases for Oncology, Third Edition (ICD-O-3) for topography codes. The decimal point is eliminated.
la de LATERAL ///
	0 "Not a paired site" ///
	1 "Right: origin of primary" ///
	2 "Left: origin of primary" ///
	3 "Only one side involved, right or left origin unspecified" ///
	4 "Bilateral involvement, lateral origin unknown; stated to be single primary" ///
	5 "Paired site: midline tumor" ///
	9 "Paired site, but no information concerning laterality; midline tumor"
	
*la de HISTO2V ALL CASES DIAGNOSED 1975-91 HAVE BEEN CONVERTED TO THE INTERNATIONAL CLASSIFICATION OF DISEASES FOR ONCOLOGY, SECOND EDITION (ICD-O-2, 1992).
*la de BEHO2V Behavior codes are also defined in ICD-O-2, 1992.
*la de HISTO3V Third Edition (ICD-O-3) is the standard reference for coding the histology for tumors diagnosed in 2001 and later.

la de BEHO3V ///
	0 "Benign (Reportable for intracranial and CNS sites only)" ///
	1 "Uncertain whether benign or malignant, borderline malignancy, low malignant potential, and uncertain malignant potential (Reportable for intracranial and CNS sites only)" ///
	2 "Carcinoma in situ; intraepithelial; noninfiltrating; noninvasive" ///
	3 "Malignant, primary site (invasive)"
	
la de GRADE ///
	1 "Grade I; grade i; grade 1; well differentiated; differentiated, NOS" ///
	2 "Grade II; grade ii; grade 2; moderately differentiated; moderately differentiated; intermediate differentiation" ///
	3 "Grade III; grade iii; grade 3; poorly differentiated; differentiated" ///
	4 "Grade IV; grade iv; grade 4; undifferentiated; anaplastic" ///
	5 "T-cell; T-precursor" ///
	6 "B-cell; Pre-B; B-Precursor" ///
	7 "Null cell; Non T-non B" ///
	8 "N K cell (natural killer cell)" ///
	9 "cell type not determined, not stated or not applicable"
	
la de DX_CONF ///
	1 "Positive histology" ///
	2 "Positive cytology" ///
	3 "Positive histology PLUS - positive immunophenotyping AND/OR positive genetic studies (Used only for hematopoietic and lymphoid neoplasms M-9590/3-9992/3)" ///
	4 "Positive microscopic confirmation, method not specified" ///
	5 "Positive laboratory test/marker study" ///
	6 "Direct visualization without microscopic confirmation" ///
	7 "Radiology and other imaging techniques without microscopic confirmation" ///
	8 "Clinical diagnosis only (other than 5, 6, or 7)" ///
	9 "Unknown whether microscopically confirmed; death certificate only"
	
la de REPT_SRC ///
	1 "Hospital inpatient; Managed health plans with comprehensive, unified medical records (new code definition effective with diagnosis on or after 1/1/2006)" ///
	2 "Radiation Treatment Centers or Medical Oncology Centers (hospital-affiliated or independent) (effective with diagnosis on or after 1/1/2006)" ///
	3 "Laboratory Only (hospital-affiliated or independent)" ///
	4 "Physician’s Office/Private Medical Practitioner (LMD)" ///
	5 "Nursing/Convalescent Home/Hospice" ///
	6 "Autopsy Only" ///
	7 "Death Certificate Only" ///
	8 "Other hospital outpatient units/surgery centers (effective with diagnosis on or after 1/1/2006)"
	
la de EOD10_SZ ///
	999 "Unknown size"
	
*la de EOD10_EX
*la de EOD10_PE
*la de EOD10_ND

la de EOD10_PN ///
	0 "All nodes examined are negative" ///
	1 "number of nodes positive" ///
	90 "90 or more nodes are positive" ///
	95 "Positive aspiration of lymph node(s) was performed" ///
	97 "Positive nodes are documented, but number is unspecified" ///
	98 "No nodes were examined" ///
	99 "Unknown whether nodes are positive; not applicable; not stated in patient record"
	
la de EOD10_NE ///
	0 "No nodes were examined" ///
	1 "Exact number of nodes examined" ///
	90 "90 or more nodes were examined" ///
	95 "No regional nodes were removed, but aspiration of regional nodes was performed" ///
	96 "Regional lymph node removal was documented as a sampling, and the number of nodes is unknown/not stated" ///
	97 "Regional lymph node removal was documented as a dissection, and the number of nodes is unknown/not stated" ///
	98 "Regional lymph nodes were surgically removed, but the number of lymph nodes is unknown/not stated and not documented as a sampling or dissection; nodes were examined, but the number is unknown" ///
	99 "Unknown whether nodes were examined; not applicable or negative; not stated in patient record"
	
*la de EOD13 Detailed site-specific codes for EOD used by SEER for selected sites of cancer for tumors diagnosed 1975-1982, except death-certificate-only cases.
*la de EOD2 Site-specific codes for EOD used by SEER for tumors diagnosed from January 1, 1973, to December 31, 1982, for cancer sites that did not have a 13-digit scheme.
*la de EOD4 Codes for site-specific EOD used by SEER for tumors diagnosed from January 1, 1983 to December 31, 1987 for all cancer sites.

la de EOD_CODE ///
	0 "2-Digit Nonspecific Extent of Disease (1973-82)" ///
	1 "2-Digit Site-Specific Extent of Disease (1973-82)" ///
	2 "13-Digit (expanded) Site Specific Extent of Disease (1973-82)" ///
	3 "4-Digit Extent of Disease (1983-87)" ///
	4 "10-Digit Extent of Disease, 1988 (1988-2003)"
	
la de TUMOR_1V ///
	0 "None Done" ///
	1 "Positive" ///
	2 "Negative" ///
	3 "Borderline; undetermined whether positive or negative" ///
	8 "Ordered, but results not in chart" ///
	9 "Unknown or no information" ///
	4 "Range 1 (S1) <1,000 ng/ml" ///
	5 "Range 2 (S2) 1,000 – 10,000 ng/ml" ///
	6 "Range 3 (S3) >10,000 ng/ml" 
	
la de TUMOR_2V ///
	0 "None Done" ///
	1 "Positive" ///
	2 "Negative" ///
	3 "Borderline; undetermined whether positive or negative" ///
	8 "Ordered, but results not in chart" ///
	9 "Unknown or no information" ///
	4 "Range 1 (S1) <1,000 ng/ml" ///
	5 "Range 2 (S2) 1,000 – 10,000 ng/ml" ///
	6 "Range 3 (S3) >10,000 ng/ml" 
	
la de TUMOR_3V ///
	0 "None Done" ///
	2 "Within normal limits" ///
	4 "Range 1 (S1) <1,000 ng/ml" ///
	5 "Range 2 (S2) 1,000 – 10,000 ng/ml" ///
	6 "Range 3 (S3) >10,000 ng/ml" ///
	8 "Ordered, but results not in chart" ///
	9 "Unknown or no information"
	
la de CSTUMSIZ ///
	0 "Indicates no mass or no tumor found; for example, when a tumor of a stated primary site is not found, but the tumor has metastasized." ///
	988 "Exact size in millimeters" ///
	989 "989 millimeters or larger" ///
	990 "Microscopic focus or foci only; no size of focus is given" ///
	991 "Described as less than 1 cm" ///
	992 "Described as less than 2 cm" ///
	993 "Described as less than 3 cm" ///
	994 "Described as less than 4 cm" ///
	995 "Described as less than 5 cm" ///
	998 "Site-specific codes where needed" ///
	999 "Unknown; size not stated; not stated in patient record" ///
	888 "Not applicable"
	
*la de CSEXTEN Information on extension of the tumor.
*la de CSLYMPHN Information on involvement of lymph nodes.
*la de CSMETSDX   Information on distant metastasis.
*la de CS1SITE Each CS site-specific factor (SSF) is schema dependent.
*la de CS2SITE   
*la de CS3SITE   
*la de CS4SITE   
*la de CS5SITE  
*la de CS6SITE  
*la de CS25SITE 

la de DAJCCT ///
	99 "TX" ///
	00 "T0" ///
	01 "Ta" ///
	05 "Tis" ///
	06 "Tispu (Urethra only)" ///
	07 "Tispd (Urethra only)" ///
	10 "T1" ///
	11 "T1mic" ///
	19 "T1 NOS" ///
	12 "T1a" ///
	13 "T1a1" ///
	14 "T1a2" ///
	15 "T1b" ///
	16 "T1b1" ///
	17 "T1b2" ///
	18 "T1c" ///
	20 "T2" ///
	29 "T2 NOS" ///
	21 "T2a" ///
	22 "T2b" ///
	23 "T2c" ///
	30 "T3" ///
	39 "T3 NOS" ///
	31 "T3a" ///
	32 "T3b" ///
	33 "T3c" ///
	40 "T4" ///
	49 "T4 NOS" ///
	41 "T4a" ///
	42 "T4b" ///
	43 "T4c" ///
	44 "T4d" ///
	80 "T1a NOS" ///
	81 "T1b NOS" ///
	88 "Not applicable"
	
la de DAJCCN ///
	99 "NX" ///
	0 "N0" ///
	1 "N0(i-)" ///
	2 "N0(i+)" ///
	3 "N0(mol-)" ///
	4 "N0(mol+)" ///
	10 "N1" ///
	19 "N1 NOS" ///
	11 "N1a" ///
	12 "N1b" ///
	13 "N1c" ///
	18 "N1mi" ///
	20 "N2" ///
	29 "N2 NOS" ///
	21 "N2a" ///
	22 "N2b" ///
	23 "N2c" ///
	30 "N3" ///
	39 "N3 NOS" ///
	31 "N3a" ///
	32 "N3b" ///
	33 "N3c" ///
	88 "Not applicable"
	
la de DAJCCM ///
	99 "MX" ///
	0 "M0" ///
	10 "M1" ///
	11 "M1a" ///
	12 "M1b" ///
	13 "M1c" ///
	19 "M1 NOS" ///
	88 "Not applicable"
	
la de DAJCCSTG ///
	0 "Stage 0" ///
	1 "Stage 0a" ///
	2 "Stage 0is" ///
	10 "Stage I" ///
	11 "Stage I NOS" ///
	12 "Stage IA" ///
	13 "Stage IA1" ///
	14 "Stage IA2" ///
	15 "Stage IB" ///
	16 "Stage IB1" ///
	17 "Stage IB2" ///
	18 "Stage IC" ///
	19 "Stage IS" ///
	23 "Stage ISA (lymphoma only)" ///
	24 "Stage ISB (lymphoma only)" ///
	20 "Stage IEA (lymphoma only)" ///
	21 "Stage IEB (lymphoma only)" ///
	22 "Stage IE (lymphoma only)" ///
	30 "Stage II" ///
	31 "Stage II NOS" ///
	32 "Stage IIA" ///
	33 "Stage IIB" ///
	34 "Stage IIC" ///
	35 "Stage IIEA (lymphoma only)" ///
	36 "Stage IIEB (lymphoma only)" ///
	37 "Stage IIE (lymphoma only)" ///
	38 "Stage IISA (lymphoma only)" ///
	39 "Stage IISB (lymphoma only)" ///
	40 "Stage IIS (lymphoma only)" ///
	41 "Stage IIESA (lymphoma only)" ///
	42 "Stage IIESB (lymphoma only)" ///
	43 "Stage IIES (lymphoma only)" ///
	50 "Stage III" ///
	51 "Stage III NOS" ///
	52 "Stage IIIA" ///
	53 "Stage IIIB" ///
	54 "Stage IIIC" ///
	55 "Stage IIIEA (lymphoma only)" ///
	56 "Stage IIIEB (lymphoma only)" ///
	57 "Stage IIIE (lymphoma only)" ///
	58 "Stage IIISA (lymphoma only)" ///
	59 "Stage IIISB (lymphoma only)" ///
	60 "Stage IIIS (lymphoma only)" ///
	61 "Stage IIIESA (lymphoma only)" ///
	62 "Stage IIIESB (lymphoma only)" ///
	63 "Stage IIIES (lymphoma only)" ///
	70 "Stage IV" ///
	71 "Stage IV NOS" ///
	72 "Stage IVA" ///
	73 "Stage IVB" ///
	74 "Stage IVC" ///
	88 "Not applicable" ///
	90 "Stage Occult" ///
	99 "Stage Unknown"
	
la de DSS1977S ///
	0 "In Situ" ///
	1 "Localized" ///
	2 "Regional, direct extension" ///
	3 "Regional, lymph nodes only" ///
	4 "Regional, extension and nodes" ///
	5 "Regional, NOS" ///
	7 "Distant" ///
	8 "Not applicable" ///
	9 "Unknown/Unstaged"
	
*la de SCSSM2KO  Combination of NAACCR Items #759 and #3020. For 2004-2015 cases, it is copied from Derived SS2000 and for 2016+, it is the best available between Derived SS2000 and SEER Summary Stage 2000.
*la de CSVFIRST 
*la de CSVLATES 
*la de CSVCURRENT

la de SURGPRIF ///
	0 "None no surgical procedure of primary site; diagnosed at autopsy only" ///
	10 "Site-specific codes. Tumor destruction; no pathologic specimen or unknown whether there is a pathologic specimen" ///
	19 "Site-specific codes. Tumor destruction; no pathologic specimen or unknown whether there is a pathologic specimen" ///
	20 "Site-specific codes. Resection; pathologic specimen" ///
	80 "Site-specific codes. Resection; pathologic specimen" ///
	90 "Surgery, NOS. A surgical procedure to the primary site was done, but no information on the type of surgical procedure is provided." ///
	98 "Special codes for hematopoietic, reticuloendothelial, immunoproliferative, myeloproliferative diseases; ill-defined sites; and unknown primaries (See site-specific codes for the sites and histologies), except death certificate only" ///
	99 "Unknown if surgery performed; death certificate only"
	
la de SURGSCOF ///
	0 "No regional lymph nodes removed or aspirated; diagnosed at autopsy." ///
	1 "Biopsy or aspiration of regional lymph node, NOS" ///
	2 "Sentinel lymph node biopsy [only]" ///
	3 "Number of regional lymph nodes removed unknown, not stated; regional lymph nodes removed, NOS" ///
	4 "1 to 3 regional lymph nodes removed" ///
	5 "4 or more regional lymph nodes removed" ///
	6 "Sentinel node biopsy and code 3, 4, or 5 at same time or timing not noted" ///
	7 "Sentinel node biopsy and code 3, 4, or 5 at different times" ///
	9 "Unknown or not applicable; death certificate only"
	
la de SURGSITF ///
	0 "None; diagnosed at autopsy" ///
	1 "Nonprimary surgical procedure performed" ///
	2 "Nonprimary surgical procedure to other regional sites" ///
	3 "Non-primary surgical procedure to distant lymph node(s)" ///
	4 "Nonprimary surgical procedure to distant site" ///
	5 "Combination of codes 2, 3, or 4" ///
	9 "Unknown; death certificate only"
	
la de NUMNODES ///
	0 "No regional lymph nodes examined" ///
	1 "One regional lymph node examined" ///
	2 "Two regional lymph nodes examined" ///
	90 "90 or more regional lymph nodes examined" ///
	95 "No regional lymph nodes examined" ///
	96 "Regional lymph node removal documented as sampling, and number of lymph nodes unknown/not stated" ///
	97 "Regional lymph node removal documented as dissection, and number of lymph nodes unknown/not stated" ///
	98 "Regional lymph nodes surgically removed, but number of lymph nodes unknown/not stated and not documented as sampling or dissection" ///
	99 "Unknown; not stated; death certificate-only"
	
la de NO_SURG ///
	0 "Surgery performed" ///
	1 "Surgery not recommended" ///
	2 "Contraindicated due to other conditions; Autopsy Only case (1973-2002)" ///
	5 "Patient died before recommended surgery" ///
	6 "Unknown reason for no surgery" ///
	7 "Patient or patient's guardian refused" ///
	8 "Recommended, unknown if done" ///
	9 "Unknown if surgery performed; Death Certificate Only case; Autopsy only case (2003+)"
	
*la de SS_SURG 
*la de SURGSCOP 
*la de SURGSITE 
*la de RECNOREC 

la de TYPE_FU ///
	1 "Autopsy Only or Death Certificate Only case" ///
	2 "Active follow up case" ///
	3 "In situ cancer of the cervix uteri only" ///
	4 "Case not originally in active follow up, but in active follow up now (San Francisco-Oakland only)"
	
la de AGE_1REC ///
	0 "Age 00" ///
	1 "Ages 01-04" ///
	2 "Ages 05-09" ///
	3 "Ages 10-14" ///
	4 "Ages 15-19" ///
	5 "Ages 20-24" ///
	6 "Ages 25-29" /// 
	7 "Ages 30-34" ///
	8 "Ages 35-39" ///
	9 "Ages 40-44" ///
	10 "Ages 45-49" ///
	11 "Ages 50-54" ///
	12 "Ages 55-59" ///
	13 "Ages 60-64" ///
	14 "Ages 65-69" ///
	15 "Ages 70-74" ///
	16 "Ages 75-79" ///
	17 "Ages 80-84" ///
	18 "Ages 85+" ///
	99 "Unknown Age"
	
*la de SITERWHO 
*la de ICDOTO9V
*la de ICDOT10V 
*la de ICCC3WHO
*la de ICCC3XWHO

la de BEHTREND ///
	0 "Benign" ///
	1 "Borderline malignancy" ///
	2 "In situ" ///
	3 "Malignant" ///
	4 "Only malignant in ICD-O-3" ///
	5 "No longer reportable in ICD-O-3" ///
	6 "Only malignant 2010+"
	
la de HISTREC ///
	0 "8000-8009 : unspecified neoplasms" ///
	1 "8010-8049 : epithelial neoplasms, NOS" ///
	2 "8050-8089 : squamous cell neoplams" ///
	3 "8090-8119 : basal cell neoplams" ///
	4 "8120-8139 : transitional cell papillomas and carcinomas" ///
	5 "8140-8389 : adenomas and adenocarcinomas" ///
	6 "8390-8429 : adnexal and skin appendage neoplams" ///
	7 "8430-8439 : mucoepidermoid neoplasms" ///
	8 "8440-8499 : cystic, mucinous and serous neoplams" ///
	9 "8500-8549 : ductal and lobular neoplams" ///
	10 "8550-8559 : acinar cell neoplasms" ///
	11 "8560-8579 : complex epithelial neoplams" ///
	12 "8580-8589 : thymic epithelial neoplams" ///
	13 "8590-8679 : specialized gonadal neoplams" ///
	14 "8680-8719 : paragangliomas and glumus tumors" ///
	15 "8720-8799 : nevi and melanomas" ///
	16 "8800-8809 : soft tissue tumors and sarcomas, NOS" ///
	17 "8810-8839 : fibromatous neoplasms" ///
	18 "8840-8849 : myxomatous neoplasms" ///
	19 "8850-8889 : lipomatous neoplasms" ///
	20 "8890-8929 : myomatous neoplasms" ///
	21 "8930-8999 : complex mixed and stromal neoplasms" ///
	22 "9000-9039 : fibroepithelial neoplasms" ///
	23 "9040-9049 : synovial-like neoplasms" ///
	24 "9050-9059 : mesothelial neoplasms" ///
	25 "9060-9099 : germ cell neoplasms" ///
	26 "9100-9109 : trophoblastic neoplasms" ///
	27 "9110-9119 : mesonephromas" ///
	28 "9120-9169 : blood vessel tumors" ///
	29 "9170-9179 : lymphatic vessel tumors" ///
	30 "9180-9249 : osseous and chondromatous neoplasms" ///
	31 "9250-9259 : giant cell tumors" ///
	32 "9260-9269 : miscellaneous bone tumors (C40._,C41._)" ///
	33 "9270-9349 : odontogenic tumors ( C41._)" ///
	34 "9350-9379 : miscellaneous tumors" ///
	35 "9380-9489 : gliomas" ///
	36 "9490-9529 : neuroepitheliomatous neoplasms" ///
	37 "9530-9539: meningiomas" ///
	38 "9540-9579 : nerve sheath tumors" ///
	39 "9580-9589 : granular cell tumors & alveolar soft part sarcomas" ///
	40 "9590-9599 : malignant lymphomas, NOS or diffuse" ///
	41 "9650-9669 : hodgkin lymphomas" ///
	42 "9670-9699 : nhl - mature b-cell lymphomas" ///
	43 "9700-9719 : nhl - mature t and nk-cell lymphomas" ///
	44 "9720-9729 : nhl - precursor cell lymphoblastic lymphoma" ///
	45 "9730-9739 : plasma cell tumors" ///
	46 "9740-9749 : mast cell tumors" ///
	47 "9750-9759 : neoplasms of histiocytes and accessory lymphoid cells" ///
	48 "9760-9769 : immunoproliferative diseases" ///
	49 "9800-9805: leukemias, nos" ///
	50 "9820-9839 : lymphoid leukemias (C42.1)" ///
	51 "9840-9939 : myeloid leukemias (C42.1)" ///
	52 "9940-9949 : other leukemias (C42.1)" ///
	53 "9950-9969 : chronic myeloproliferative disorders (C42.1)" ///
	54 "9970-9979 : other hematologic disorders" ///
	55 "9980-9989 : myelodysplastic syndrome" ///
	98 "other"
	
la de HISTRECB ///
	1 "Diffuse astrocytoma (protoplasma, fibrillary)" ///
	2 "Anaplastic astrocytoma" ///
	3 "Glioblastoma" ///
	4 "Pilocytic astrocytoma" ///
	5 "Unique astrocytoma variants" ///
	6 "Oligodendroglioma" ///
	7 "Anaplastic oligodendroglioma" ///
	8 "Ependymoma/anaplastic ependymoma" ///
	9 "Ependymoma variants" ///
	10 "Mixed glioma" ///
	11 "Astrocytoma, NOS" ///
	12 "Glioma , NOS" ///
	13 "Choroid plexus" ///
	14 "Neuroepithelial" ///
	15 "Benign & malignant neuronal/glial, neuronal & mixed" ///
	16 "Pineal parenchymal" ///
	17 "Embryonal/primitive/medulloblastoma" ///
	18 "Nerve sheath, benign and malignant" ///
	19 "Meningioma, benign and malignant" ///
	20 "Other mesenchymal, benign and malignant" ///
	21 "Hemangioma and hemagioblastoma" ///
	22 "Lymphoma" ///
	23 "Germ cell tumors, cysts, and heterotopias" ///
	24 "Chordoma/chondrosarcoma" ///
	25 "Pituitary" ///
	26 "Craniopharyngioma" ///
	27 "Neoplasm, unspecified, benign and malignant" ///
	97 "Other Brain Histologies" ///
	98 "Not Brain"
	
la de cs0204schema ///
	1 "AdnexaUterineOther" ///
	2 "AdrenalGland" ///
	3 "AmpullaVater" ///
	4 "Anus" ///
	5 "Appendix" ///
	6 "BileDuctsDistal" ///
	7 "BileDuctsIntraHepat" ///
	8 "BileDuctsPerihilar" ///
	9 "BiliaryOther" ///
	10 "Bladder" ///
	11 "Bone" ///
	12 "Brain" ///
	13 "Breast" ///
	14 "BuccalMucosa" ///
	15 "CarcinoidAppendix" ///
	16 "Cervix" ///
	17 "CNSOther" ///
	18 "Colon" ///
	19 "Conjunctiva" ///
	20 "CorpusAdenosarcoma" ///
	21 "CorpusCarcinoma" ///
	22 "CorpusSarcoma" ///
	23 "CysticDuct" ///
	24 "DigestiveOther" ///
	25 "EndocrineOther" ///
	26 "EpiglottisAnterior" ///
	27 "Esophagus" ///
	28 "EsophagusGEJunction" ///
	29 "EyeOther" ///
	30 "FallopianTube" ///
	31 "FloorMouth" ///
	32 "Gallbladder" ///
	33 "GenitalFemaleOther" ///
	34 "GenitalMaleOther" ///
	35 "GISTAppendix" ///
	36 "GISTColon" ///
	37 "GISTEsophagus " ///
	38 "GISTPeritoneum" ///
	39 "GISTRectum" ///
	40 "GISTSmallIntestine" ///
	41 "GISTStomach" ///
	42 "GumLower" ///
	43 "GumOther" ///
	44 "GumUpper" ///
	45 "HeartMediastinum" ///
	46 "HemeRetic" ///
	47 "Hypopharynx" ///
	48 "IllDefinedOther" ///
	49 "IntracranialGland" ///
	50 "KaposiSarcoma" ///
	51 "KidneyParenchyma" ///
	52 "KidneyRenalPelvis" ///
	53 "LacrimalGland" ///
	54 "LacrimalSac" ///
	55 "LarynxGlottic" ///
	56 "LarynxOther" ///
	57 "LarynxSubglottic" ///
	58 "LarynxSupraglottic" ///
	59 "LipLower" ///
	60 "LipOther" ///
	61 "LipUpper" ///
	62 "Liver" ///
	63 "Lung" ///
	64 "Lymphoma" ///
	65 "LymphomaOcularAdnexa" ///
	66 "MelanomaBuccalMucosa" ///
	67 "MelanomaChoroid" ///
	68 "MelanomaCiliaryBody" ///
	69 "MelanomaConjunctiva" ///
	70 "MelanomaEpiglottisAnterior" ///
	71 "MelanomaEyeOther" ///
	72 "MelanomaFloorMouth" ///
	73 "MelanomaGumLower" ///
	74 "MelanomaGumOther" ///
	75 "MelanomaGumUpper" ///
	76 "MelanomaHypopharynx" ///
	77 "MelanomaIris" ///
	78 "MelanomaLarynxGlottic" ///
	79 "MelanomaLarynxOther" ///
	80 "MelanomaLarynxSubglottic" ///
	81 "MelanomaLarynxSupraglottic" ///
	82 "MelanomaLipLower" ///
	83 "MelanomaLipOther" ///
	84 "MelanomaLipUpper" ///
	85 "MelanomaMouthOther" ///
	86 "MelanomaNasalCavity" ///
	87 "MelanomaNasopharynx" ///
	88 "MelanomaOropharynx" ///
	89 "MelanomaPalateHard" ///
	90 "MelanomaPalateSoft" ///
	91 "MelanomaPharynxOther" ///
	92 "MelanomaSinusEthmoid" ///
	93 "MelanomaSinusMaxillary" ///
	94 "MelanomaSinusOther" ///
	95 "MelanomaSkin" ///
	96 "MelanomaTongueAnterior" ///
	97 "MelanomaTongueBase" ///
	98 "MerkelCellPenis" ///
	99 "MerkelCellScrotum" ///
	100 "MerkelCellSkin" ///
	101 "MerkelCellVulva" ///
	102 "MiddleEar" ///
	103 "MouthOther" ///
	104 "MycosisFungoides" ///
	105 "MyelomaPlasmaCellDisorder" ///
	106 "NasalCavity" ///
	107 "Nasopharynx" ///
	108 "NETAmpulla" ///
	109 "NETColon" ///
	110 "NETRectum" ///
	111 "NETSmallIntestine" ///
	112 "NETStomach" ///
	113 "Orbit" ///
	114 "Oropharynx" ///
	115 "Ovary" ///
	116 "PalateHard" ///
	117 "PalateSoft" ///
	118 "PancreasBodyTail" ///
	119 "PancreasHead" ///
	120 "PancreasOther" ///
	121 "ParotidGland" ///
	122 "Penis" ///
	123 "Peritoneum" ///
	124 "PeritoneumFemaleGen" ///
	125 "PharyngealTonsil" ///
	126 "PharynxOther" ///
	127 "Placenta" ///
	128 "Pleura" ///
	129 "Prostate" ///
	130 "Rectum" ///
	131 "RespiratoryOther" ///
	132 "Retinoblastoma" ///
	133 "Retroperitoneum" ///
	134 "SalivaryGlandOther" ///
	135 "Scrotum" ///
	136 "SinusEthmoid" ///
	137 "SinusMaxillary" ///
	138 "SinusOther" ///
	139 "Skin" ///
	140 "SkinEyelid" ///
	141 "SmallIntestine" ///
	142 "SoftTissue" ///
	143 "Stomach" ///
	144 "SubmandibularGland" ///
	145 "Testis" ///
	146 "Thyroid" ///
	147 "TongueAnterior" ///
	148 "TongueBase" ///
	149 "Trachea" ///
	150 "Urethra" ///
	151 "UrinaryOther" ///
	152 "Vagina" ///
	153 "Vulva"

la de RAC_RECA ///
	1 "White" ///
	2 "Black" ///
	3 "Other (American Indian/AK Native, Asian/Pacific Islander)" ///
	7 "Other unspecified (1991+)" ///
	9 "Unknown"
	
la de RAC_RECY ///
	1 "White" ///
	2 "Black" ///
	3 "American Indian/Alaska Native" ///
	4 "Asian or Pacific Islander" ///
	7 "Other unspecified (1991+)" ///
	9 "Unknown"
	
la de ORIGRECB ///
	0 "Non-Spanish-Hispanic-Latino" ///
	1 "Spanish-Hispanic-Latino"
	
la de HST_STGA ///
	0 "in-situ" ///
	1 "localized" ///
	2 "regional" ///
	3 "distant" ///
	4 "distant" ///
	8 "localized/regional" ///
	9 "unstage" 
	
*la de AJCC_STG
*la de AJ_3SEER

la de SSS77VZ ///
	0 "In situ" ///
	1 "Localized only" ///
	2 "Regional by direct extension only" ///
	3 "Regional lymph nodes involved only" ///
	4 "Regional by both direct extension and lymph" ///
	5 "Regional, NOS" ///
	7 "Distant site(s)/node(s) involved" ///
	9 "Unknown/unstaged/unspecified/DCO"
	
la de SSSM2KPZ ///
	0 "In situ" ///
	1 "Localized only" ///
	2 "Regional by direct extension only" ///
	3 "Regional lymph nodes involved only" ///
	4 "Regional by both direct extension and lymph" ///
	5 "Regional, NOS" ///
	7 "Distant site(s)/node(s) involved" ///
	9 "Unknown/unstaged/unspecified/DCO"
	
la de FIRSTPRM ///
	0 "no" ///
	1 "yes"
	
*la de ST_CNTY This item is a state-county combination where the first two characters represent the state FIPS code. The last three digits represent the FIPS county code.
*la de CODPUB This recode was introduced to account for several newly valid ICD-10 codes and includes both cancer and non-cancer causes of death.
*la de CODPUBKM 

la de STAT_REC ///
	1 "Alive" ///
	0 "Dead"
	
la de IHSLINK ///
	0 "Record sent for linkage, no IHS match" ///
	1 "Record sent for linkage, IHS match" 
	
*la de SUMM2K 
*la de AYASITERWHO 
*la de LYMSUBRWHO 

la de VSRTSADX ///
	0 "Alive or dead of other cause" ///
	1 "Dead" ///
	9 "N/A not first tumor"
	
	
la de ODTHCLASS ///
	0 "Alive or dead due to cancer" ///
	1 "Dead" ///
	9 "N/A not first tumor"
	
*la de CSTSEVAL 
*la de CSRGEVAL 
*la de CSMTEVAL 

la de INTPRIM ///
	0 "No" ///
	1 "Yes" ///
	9 "Excluded from IARC multiple primary algorithm due to behavior"
	
la de ERSTATUS ///
	1 "Positive" ///
	2 "Negative" ///
	3 "Borderline" ///
	4 "Unknown" ///
	9 "Not 1990+ Breast"
	
la de PRSTATUS ///
	1 "Positive" ///
	2 "Negative" ///
	3 "Borderline" ///
	4 "Unknown" ///
	9 "Not 1990+ Breast"
	
la de CSSCHEMA ///
	1 "LipUpper" ///
	2 "LipLower" ///
	3 "OthLip" ///
	4 "BaseTongue" ///
	5 "AntTongue" ///
	6 "GumUpper" ///
	7 "GumLower" ///
	8 "OthGum" ///
	9 "FOM" ///
	10 "HardPalate" ///
	11 "SoftPalate" ///
	12 "OthMouth" ///
	13 "BuccalMucosa" ///
	14 "ParotidGland" ///
	15 "SubmandibularGland" ///
	16 "OthSalivary" ///
	17 "Oropharynx" ///
	18 "AntEpiglottis" ///
	19 "Nasopharynx" ///
	20 "Hypopharynx " ///
	21 "OthPharynx" ///
	22 "Esophagus" ///
	23 "Stomach" ///
	24 "SmallIntestine" ///
	25 " Colon" ///
	26 "Rectum" ///
	27 "Anus" ///
	28 "Liver" ///
	29 "Gallbladder" ///
	30 "ExtraHepaticDucts" ///
	31 "Ampulla" ///
	32 "OthBiliary" ///
	33 "PancreasHead" ///
	34 "PancreasBodyTail" ///
	35 "OthPancreas" ///
	36 "OthDigestive" ///
	37 "NasalCavity" ///
	38 "MiddleEar" ///
	39 "MaxillarySinus" ///
	40 "EthmoidSinus" ///
	41 "OthSinus" ///
	42 "GlotticLarynx" ///
	43 "SupraLarynx" ///
	44 "SubLarynx" ///
	45 "OthLarynx" ///
	46 "Trachea" ///
	47 "Lung" ///
	48 "HeartMediastinum" ///
	49 "Pleura" ///
	50 "OthRespiratory" ///
	51 "Bone" ///
	52 "Skin" ///
	53 "SkinEyelid" ///
	54 "Melanoma" ///
	55 "MF" ///
	56 "SoftTissue" ///
	57 "Peritoneum" ///
	58 "Breast" ///
	59 "Vulva" ///
	60 "Vagina" ///
	61 "Cervix" ///
	62 "Corpus" ///
	63 "Ovary" ///
	64 "FallopianTube" ///
	65 "OthAdnexa" ///
	66 "OthFemaleGen" ///
	67 "Placenta" ///
	68 "Penis" ///
	69 "Prostate" ///
	70 "Testis" ///
	71 "OthMaleGen" ///
	72 "Scrotum" ///
	73 "Kidney" ///
	74 "RenalPelvis" ///
	75 "Bladder" ///
	76 "Urethra" ///
	77 "OthUrinary" ///
	78 "Conjunctiva" ///
	79 "MelanomaConjunctiva" ///
	80 "OthEye" ///
	81 "MelanomaIrisCiliary" ///
	82 "MelanomaChoroid" ///
	83 "MelanomaOthEye" ///
	84 "LacrimalGland" ///
	85 "Orbit" ///
	86 "Retinoblastoma" ///
	87 "Brain" ///
	88 "OthCNS" ///
	89 "Thyroid" ///
	90 "OthEndocrine" ///
	91 "KS" ///
	92 "Lymphoma" ///
	93 "HemeRetic" ///
	94 "OthIllDef"

*la de CS8SITE 
*la de CS10SITE 
*la de CS11SITE 
*la de CS13SITE 
*la de CS15SITE 
*la de CS16SITE 

la de VASINV ///
	0 "Lymph-vascular Invasion Not Present (absent)/Not Identified" ///
	1 "Lymph-vascular Invasion Present/Identified" ///
	8 "Not Applicable" ///
	9 "Unknown/Indeterminate"
	
la de SRV_TIME_MON ///
	9999 "Unknown"
	
la de SRV_TIME_MON_FLAG ///
	0 "Complete dates are available and there are 0 days of survival" ///
	1 "Complete dates are available and there are more than 0 days of survival" ///
	2 "Incomplete dates are available and there could be zero days of follow-up" ///
	3 "Incomplete dates are available and there cannot be zero days of follow-up" ///
	9 "Unknown"
	
la de INSREC_PUB ///
	1 "Uninsured" ///
	2 "Any Medicaid" ///
	3 "Insured" ///
	4 "Insured/No specifics" ///
	5 "Insurance status unknown"
	
la de DAJCC7T  ///
	999 "TX" ///
	0 "T0" ///
	10 "Ta" ///
	50 "Tis" ///
	60 "Tispu (Urethra only)" ///
	70 "Tispd (Urethra only)" ///
	100 "T1" ///
	110 "T1mic" ///
	199 "T1 NOS" ///
	120 "T1a" ///
	130 "T1a1" ///
	140 "T1a2" ///
	150 "T1b" ///
	160 "T1b1" ///
	170 "T1b2" ///
	180 "T1c" ///
	181 "T1d" ///
	200 "T2" ///
	299 "T2 NOS" ///
	210 "T2a" ///
	211 "T2a1" ///
	212 "T2a2" ///
	213 "T2a NOS" ///
	220 "T2b" ///
	230 "T2c" ///
	240 "T2d" ///
	300 "T3" ///
	399 "T3 NOS" ///
	310 "T3a" ///
	320 "T3b" ///
	330 "T3c" ///
	400 "T4" ///
	499 "T4 NOS" ///
	410 "T4a" ///
	420 "T4b" ///
	430 "T4c" ///
	440 "T4d" ///
	450 "T4e" ///
	800 "T1a NOS" ///
	810 "T1b NOS" ///
	888 "Not applicable"
	
la de DAJCC7N  ///
	999 "NX" ///
	0 "N0" ///
	10 "N0(i-)" ///
	20 "N0(i+)" ///
	30 "N0(mol-)" ///
	40 "N0(mol+)" ///
	100 "N1" ///
	199 "N1 NOS" ///
	110 "N1a" ///
	120 "N1b" ///
	130 "N1c" ///
	180 "N1mi" ///
	200 "N2" ///
	299 "N2 NOS" ///
	210 "N2a" ///
	220 "N2b" ///
	230 "N2c" ///
	300 "N3" ///
	399 "N3 NOS" ///
	310 "N3a" ///
	320 "N3b" ///
	330 "N3c" ///
	400 "N4" ///
	888 "Not applicable"
	
la de DAJCC7M ///
	///
	999 "MX" ///
	0 "M0" ///
	10 "M0(i+)" ///
	100 "M1" ///
	110 "M1a" ///
	120 "M1b" ///
	130 "M1c" ///
	140 "M1d" ///
	150 "M1e" ///
	199 "M1 NOS" ///
	888 "Not applicable"
	
la de DAJCC7STG ///
	///
	0 "Stage 0" ///
	10 "Stage 0a" ///
	20 "Stage 0is" ///
	100 "Stage I" ///
	110 "Stage I NOS" ///
	120 "Stage IA" ///
	121 "Stage IA NOS" ///
	130 "Stage IA1" ///
	140 "Stage IA2" ///
	150 "Stage IB" ///
	151 "Stage IB NOS" ///
	160 "Stage IB1" ///
	170 "Stage IB2" ///
	180 "Stage IC" ///
	190 "Stage IS" ///
	230 "Stage ISA (lymphoma only)" ///
	240 "Stage ISB (lymphoma only)" ///
	200 "Stage IEA (lymphoma only)" ///
	210 "Stage IEB (lymphoma only)" ///
	220 "Stage IE (lymphoma only)" ///
	300 "Stage II" ///
	310 "Stage II NOS" ///
	320 "Stage IIA" ///
	321 "Stage IIA NOS" ///
	322 "Stage IIA1" ///
	323 "Stage IIA NOS" ///
	330 "Stage IIB" ///
	340 "Stage IIC" ///
	350 "Stage IIEA (lymphoma only)" ///
	360 "Stage IIEB (lymphoma only)" ///
	370 "Stage IIE (lymphoma only)" ///
	380 "Stage IISA (lymphoma only)" ///
	390 "Stage IISB (lymphoma only)" ///
	400 "Stage IIS (lymphoma only)" ///
	410 "Stage IIESA (lymphoma only)" ///
	420 "Stage IIESB (lymphoma only)" ///
	430 "Stage IIES (lymphoma only)" ///
	500 "Stage III" ///
	510 "Stage III NOS" ///
	520 "Stage IIIA" ///
	530 "Stage IIIB" ///
	540 "Stage IIIC" ///
	541 "Stage IIIC1" ///
	542 "Stage IIIC2" ///
	550 "Stage IIIEA (lymphoma only)" ///
	560 "Stage IIIEB (lymphoma only)" ///
	570 "Stage IIIE (lymphoma only)" ///
	580 "Stage IIISA (lymphoma only)" ///
	590 "Stage IIISB (lymphoma only)" ///
	600 "Stage IIIS (lymphoma only)" ///
	610 "Stage IIIESA (lymphoma only)" ///
	620 "Stage IIIESB (lymphoma only)" ///
	630 "Stage IIIES (lymphoma only)" ///
	700 "Stage IV" ///
	710 "Stage IV NOS" ///
	720 "Stage IVA" ///
	730 "Stage IVB" ///
	740 "Stage IVC" ///
	888 "Not applicable" ///
	900 "Stage Occult" ///
	999 "Stage Unknown"
	
la de ADJTM_6VALUE  ///
	99 "TX Adjusted" ///
	0 "T0" ///
	1 "Ta" ///
	5 "Tis" ///
	6 "Tispu (Urethra only)" ///
	7 "Tispd (Urethra only)" ///
	10 "T1" ///
	11 "T1mic" ///
	19 "T1 NOS" ///
	12 "T1a" ///
	13 "T1a1" ///
	14 "T1a2" ///
	15 "T1b" ///
	16 "T1b1" ///
	17 "T1b2" ///
	18 "T1c" ///
	20 "T2" ///
	29 "T2 NOS" ///
	21 "T2a" ///
	22 "T2b" ///
	23 "T2c" ///
	30 "T3" ///
	39 "T3 NOS" ///
	31 "T3a" ///
	32 "T3b" ///
	33 "T3c" ///
	40 "T4" ///
	49 "T4 NOS" ///
	41 "T4a" ///
	42 "T4b" ///
	43 "T4c" ///
	44 "T4d" ///
	60 "Any T, Mets" ///
	80 "T1a NOS" ///
	81 "T1b NOS" ///
	88 "Not applicable"
	
la de ADJNM_6VALUE  ///
	99 "NX Adjusted" ///
	0 "N0" ///
	1 "N0(i-)" ///
	2 "N0(i+)" ///
	3 "N0(mol-)" ///
	4 "N0(mol+)" ///
	9 "N0 NOS" ///
	10 "N1" ///
	19 "N1 NOS" ///
	11 "N1a" ///
	12 "N1b" ///
	13 "N1c" ///
	18 "N1mi" ///
	20 "N2" ///
	29 "N2 NOS" ///
	21 "N2a" ///
	22 "N2b" ///
	23 "N2c" ///
	30 "N3" ///
	39 "N3 NOS" ///
	31 "N3a" ///
	32 "N3b" ///
	33 "N3c" ///
	60 "Any T, Mets" ///
	70 "NXr" ///
	80 "NXa" ///
	88 "Not applicable"
	
la de ADJM_6VALUE ///
	99 "MX" ///
	0 "M0" ///
	10 "M1" ///
	11 "M1a" ///
	12 "M1b" ///
	13 "M1c" ///
	19 "M1 NOS" ///
	88 "Not applicable"
	
la de ADJAJCCSTG  ///
	0 "Stage 0" ///
	1 "Stage 0a" ///
	2 "Stage 0is" ///
	10 "Stage I" ///
	11 "Stage I NOS" ///
	12 "Stage IA" ///
	13 "Stage IA1" ///
	14 "Stage IA2" ///
	15 "Stage IB" ///
	16 "Stage IB1" ///
	17 "Stage IB2" ///
	18 "Stage IC" ///
	19 "Stage IS" ///
	23 "Stage ISA (lymphoma only)" ///
	24 "Stage ISB (lymphoma only)" ///
	20 "Stage IEA (lymphoma only)" ///
	21 "Stage IEB (lymphoma only)" ///
	22 "Stage IE (lymphoma only)" ///
	30 "Stage II" ///
	31 "Stage II NOS" ///
	32 "Stage IIA" ///
	33 "Stage IIB" ///
	34 "Stage IIC" ///
	35 "Stage IIEA (lymphoma only)" ///
	36 "Stage IIEB (lymphoma only)" ///
	37 "Stage IIE (lymphoma only)" ///
	38 "Stage IISA (lymphoma only)" ///
	39 "Stage IISB (lymphoma only)" ///
	40 "Stage IIS (lymphoma only)" ///
	41 "Stage IIESA (lymphoma only)" ///
	42 "Stage IIESB (lymphoma only)" ///
	43 "Stage IIES (lymphoma only)" ///
	50 "Stage III" ///
	51 "Stage III NOS" ///
	52 "Stage IIIA" ///
	53 "Stage IIIB" ///
	54 "Stage IIIC" ///
	55 "Stage IIIEA (lymphoma only)" ///
	56 "Stage IIIEB (lymphoma only)" ///
	57 "Stage IIIE (lymphoma only)" ///
	58 "Stage IIISA (lymphoma only)" ///
	59 "Stage IIISB (lymphoma only)" ///
	60 "Stage IIIS (lymphoma only)" ///
	61 "Stage IIIESA (lymphoma only)" ///
	62 "Stage IIIESB (lymphoma only)" ///
	63 "Stage IIIES (lymphoma only)" ///
	70 "Stage IV" ///
	71 "Stage IV NOS" ///
	72 "Stage IVA" ///
	73 "Stage IVB" ///
	74 "Stage IVC" ///
	88 "Not applicable" ///
	90 "Stage Occult" ///
	99 "Stage Unknown"
	
*la de CS7SITE 
*la de CS9SITE
*la de CS12SITE 

la de her2  ///
	1 "Positive" ///
	2 "Negative" ///
	3 "Borderline" ///
	4 "Unknown" ///
	9 "Not 2010+ Breast" 
	
la de brst_sub ///
	1 "Her2+/HR+" ///
	2 "Her2+/HR-" ///
	3 "Her2-/HR+" ///
	4 "Triple Negative" ///
	5 "Unknown" ///
	9 "Not 2010+ Breast"
	
*la de ANNARBOR 

la de SCMETSDXB_PUB ///
	0 "None; no metastases" ///
	1 "Yes" ///
	8 "Not applicable" ///
	9 "Unknown; not documented in patient record"
	
la de SCMETSDXBR_PUB ///
	0 "None; no metastases" ///
	1 "Yes" ///
	8 "Not applicable" ///
	9 "Unknown; not documented in patient record"
	
la de SCMETSDXLIV_PUB ///
	0 "None; no metastases" ///
	1 "Yes" ///
	8 "Not applicable" ///
	9 "Unknown; not documented in patient record"
	
la de SCMETSDXLUNG_PUB ///
	0 "None; no metastases" ///
	1 "Yes" ///
	8 "Not applicable" ///
	9 "Unknown; not documented in patient record"
	
*la de T_VALUE 
*la de N_VALUE 
*la de M_VALUE 

la de MALIGCOUNT ///
	99 "unknown"
	
la de BENBORDCOUNT  ///
	99 "unknown"
	
la de TUMSIZS  ///
	0 "Indicates no mass or no tumor found" ///
	988 "Exact size in millimeters" ///
	989 "989 millimeters or larger" ///
	990 "Microscopic focus or foci only; no size of focus is given" ///
	998 "Site-specific codes where needed" ///
	999 "Unknown; size not stated; not stated in patient record" 
	
*la de DSRPSG
*la de DASRCT
*la de DASRCN 
*la de DASRCM 

la de DASRCTS ///
	1 "Clinical" ///
	2 "Pathologic" ///
	3 "Clinical and pathologic information used" ///
	9 "Unknown"
	
la de DASRCNS ///
	1 "Clinical" ///
	2 "Pathologic" ///
	3 "Clinical and pathologic information used" ///
	9 "Unknown"
	
la de DASRCMS ///
	1 "Clinical" ///
	2 "Pathologic" ///
	3 "Clinical and pathologic information used" ///
	9 "Unknown"
	
*la de TNMEDNUM string see codebook

la de METSDXLN ///
	0 "None; no distant lymph node metastases" ///
	1 "Yes; distant lymph node metastases" ///
	8 "Not applicable" ///
	9 "Unknown whether distant lymph node(s) are involved metastatic site. Not documented in patient record."
	
la de METSDXO ///
	0 "None; no other metastases" ///
	1 "Yes; distant metastases in known site(s) other than bone, brain, liver, lung or distant lymph nodes (Note: includes bone marrow involvement for lymphomas)" ///
	2 "Generalized metastases such as carcinomatosis" ///
	8 "Not applicable" ///
	9 "Unknown whether any other metastatic site or generalized metastases. Not documented in patient record."
	
	
lab var PUBCSNUM "Patient ID number"
lab var REG "Registry ID"
lab var MAR_STAT "Marital Status at DX"
lab var RACE1V "Race/Ethnicity"
lab var SEX "Sex"
lab var AGE_DX "Age at diagnosis"
lab var YR_BRTH "Year of Birth"
lab var SEQ_NUM "Sequence Number—Central"
lab var MDXRECMP "Month of diagnosis"
lab var YEAR_DX "Year of diagnosis"
lab var PRIMSITE "Primary Site"
lab var LATERAL "Laterality"
lab var HISTO2V "Histology (92-00) ICD-O-2"
lab var BEHO2V "Behavior (92-00) ICD-O-2"
lab var HISTO3V "Histologic Type ICD-O-3"
lab var BEHO3V "Behavior Code ICD-O-3"
lab var GRADE "Grade"
lab var DX_CONF "Diagnostic Confirmation"
lab var REPT_SRC "Type of Reporting Source"
lab var EOD10_SZ "EOD—Tumor Size"
lab var EOD10_EX "EOD—Extension"
lab var EOD10_PE "EOD—Extension Prost Path"
lab var EOD10_ND "EOD—Lymph Node Involv"
lab var EOD10_PN "Regional Nodes Positive"
lab var EOD10_NE "Regional Nodes Examined"
lab var EOD13 "EOD—Old 13 Digit"
lab var EOD2 "EOD—Old 2 Digit"
lab var EOD4 "EOD—Old 4 Digit"
lab var EOD_CODE "Coding System for EOD"
lab var TUMOR_1V "Tumor Marker 1"
lab var TUMOR_2V "Tumor Marker 2"
lab var TUMOR_3V "Tumor Marker 3"
lab var CSTUMSIZ "CS Tumor Size"
lab var CSEXTEN "CS Extension"
lab var CSLYMPHN "CS Lymph Nodes"
lab var CSMETSDX "CS Mets at Dx"
lab var CS1SITE "CS Site-Specific Factor 1"
lab var CS2SITE "CS Site-Specific Factor 2"
lab var CS3SITE "CS Site-Specific Factor 3"
lab var CS4SITE "CS Site-Specific Factor 4"
lab var CS5SITE "CS Site-Specific Factor 5"
lab var CS6SITE "CS Site-Specific Factor 6"
lab var ST_CNTY "State-county recode"
lab var CODPUB "Cause of Death to SEER site recode"
lab var CODPUBKM "COD to site rec KM"
lab var STAT_REC "Vital Status recode"
lab var IHSLINK "IHS Link"
lab var SUMM2K "Summary stage 2000 (1998+)"
lab var AYASITERWHO "AYA site recode/WHO 2008"
lab var LYMSUBRWHO "Lymphoma subtype recode/WHO 2008"
lab var VSRTSADX "SEER Cause-Specific Death Classification"
lab var ODTHCLASS "SEER Other Cause of Death Classification"
lab var CSTSEVAL "CS Tumor Size/Ext Eval"
lab var CSRGEVAL "CS Lymph Nodes Eval"
lab var CSMTEVAL "CS Mets Eval"
lab var INTPRIM "Primary by international rules"
lab var ERSTATUS "ER Status Recode Breast Cancer (1990+)"
lab var PRSTATUS "PR Status Recode Breast Cancer (1990+)"
lab var CSSCHEMA "CS Schema -AJCC 6th ed (previously called v1)"
lab var CS8SITE "CS Site-Specific Factor 8"
lab var CS10SITE "CS Site-Specific Factor 10"
lab var CS11SITE "CS Site-Specific Factor 11"
lab var CS13SITE "CS Site-Specific Factor 13"
lab var CS15SITE "CS Site-Specific Factor 15"
lab var CS16SITE "CS Site-Specific Factor 16"
lab var CS25SITE "CS Site-Specific Factor 25"
lab var DAJCCT "Derived AJCC T"
lab var DAJCCN "Derived AJCC N"
lab var DAJCCM "Derived AJCC M"
lab var DAJCCSTG "Derived AJCC Stage Group"
lab var DSS1977S "Derived SS1977"
lab var SCSSM2KO "SEER Combined Summary Stage 2000 (2004+)"
lab var CSVFIRST "CS Version Input Original"
lab var CSVLATES "CS Version Derived"
lab var CSVCURRENT "CS Version Input Current"
lab var SURGPRIF "RX Summ—Surg Prim Site"
lab var SURGSCOF "RX Summ—Scope Reg LN Sur"
lab var SURGSITF "RX Summ—Surg Oth Reg/Dis"
lab var NUMNODES "RX Summ—Reg LN Examined"
lab var NO_SURG "Reason for no surgery"
lab var SS_SURG "RX Summ—Surgery Type"
lab var SURGSCOP "RX Summ—Scope Reg 98-02"
lab var SURGSITE "RX Summ—Surg Oth 98-02"
lab var RECNOREC "Record Number Recode"
lab var TYPE_FU "SEER Type of Follow-up"
lab var AGE_1REC "Age Recode <1 Year olds"
lab var SITERWHO "Site Recode ICD-O-3/WHO 2008"
lab var ICDOTO9V "Recode ICD-O-2 to 9"
lab var ICDOT10V "Recode ICD-O-2 to 10"
lab var ICCC3WHO "ICCC site recode ICD-O-3/WHO 2008"
lab var ICCC3XWHO "ICCC site rec extended ICD-O-3/WHO 2008"
lab var BEHTREND "Behavior Recode for Analysis"
lab var HISTREC "Histology Recode—Broad Groupings"
lab var HISTRECB "Histology Recode—Brain Groupings"
lab var cs0204schema "CS Schema v0204+"
lab var RAC_RECA "Race recode (White, Black, Other)"
lab var RAC_RECY "Race recode (W, B, AI, API)"
lab var ORIGRECB "Origin recode NHIA (Hispanic, Non-Hisp)"
lab var HST_STGA "SEER historic stage A"
lab var AJCC_STG "AJCC stage 3rd edition (1988-2003)"
lab var AJ_3SEER "SEER modified AJCC Stage 3rd ed (1988-2003)"
lab var SSS77VZ "SEER Summary Stage 1977 (1995-2000)"
lab var SSSM2KPZ "SEER Summary Stage 2000 (2001-2003)"
lab var FIRSTPRM "First malignant primary indicator"
lab var VASINV "Lymph vascular invasion"
lab var SRV_TIME_MON "Survival months"
lab var SRV_TIME_MON_FLAG "Survival months flag"
lab var INSREC_PUB "Insurance recode (2007+)"
lab var DAJCC7T "Derived AJCC-7 T"
lab var DAJCC7N "Derived AJCC-7 N"
lab var DAJCC7M "Derived AJCC-7 M"
lab var DAJCC7STG "Derived AJCC-7 Stage Grp"
lab var ADJTM_6VALUE "Breast Adjusted AJCC 6th T (1988-2015)"
lab var ADJNM_6VALUE "Breast Adjusted AJCC 6th N (1988-2015)"
lab var ADJM_6VALUE "Breast Adjusted AJCC 6th M (1988-2015)"
lab var ADJAJCCSTG "Breast Adjusted AJCC 6th Stage (1988-2015)"
lab var CS7SITE "CS Site-Specific Factor 7"
lab var CS9SITE "CS Site-Specific Factor 9"
lab var CS12SITE "CS Site-Specific Factor 12"
lab var her2 "Derived HER2 Recode (2010+)"
lab var brst_sub "Breast Subtype (2010+)"
lab var ANNARBOR "Lymphomas: Ann Arbor Staging (1983-2015)"
lab var SCMETSDXB_PUB "SEER Combined Mets at Dx-Bone"
lab var SCMETSDXBR_PUB "SEER Combined Mets at Dx-Brain"
lab var SCMETSDXLIV_PUB "SEER Combined Mets at Dx-Liver"
lab var SCMETSDXLUNG_PUB "SEER Combined Mets at Dx-Lung"
lab var T_VALUE "T value - based on AJCC 3rd (1988-2003)"
lab var N_VALUE "N value - based on AJCC 3rd (1988-2003)"
lab var M_VALUE "M value - based on AJCC 3rd (1988-2003)"
lab var MALIGCOUNT "Total Number of In Situ/malignant Tumors for Patient"
lab var BENBORDCOUNT "Total Number of Benign/Borderline Tumors for Patient"
lab var TUMSIZS "Tumor Size Summary (2016+)"
lab var DSRPSG "Derived SEER Cmb Stg Grp (2016+)"
lab var DASRCT "Derived SEER Combined T (2016+)"
lab var DASRCN "Derived SEER Combined N (2016+)"
lab var DASRCM "Derived SEER Combined M (2016+)"
lab var DASRCTS "Derived SEER Combined T Src (2016+)"
lab var DASRCNS "Derived SEER Combined N Src (2016+)"
lab var DASRCMS "Derived SEER Combined M Src (2016+)"
lab var TNMEDNUM "TNM Edition Number (2016+)"
lab var METSDXLN "Mets at DX – Distant LN (2016+)"
lab var METSDXO "Mets at DX – Other (2016+)"

	
lab val REG REG
lab val MAR_STAT MAR_STAT
lab val RACE1V RACE1V
lab val SEX SEX
lab val AGE_DX AGE_DX
lab val SEQ_NUM SEQ_NUM
lab val LATERAL LATERAL
lab val BEHO3V BEHO3V
lab val GRADE GRADE
lab val DX_CONF DX_CONF
lab val REPT_SRC REPT_SRC
lab val EOD10_SZ EOD10_SZ
lab val EOD10_PN EOD10_PN
lab val EOD10_NE EOD10_NE
lab val EOD_CODE EOD_CODE
lab val TUMOR_1V TUMOR_1V
lab val TUMOR_2V TUMOR_2V
lab val TUMOR_3V TUMOR_3V
lab val CSTUMSIZ CSTUMSIZ
lab val STAT_REC  STAT_REC
lab val IHSLINK  IHSLINK
lab val VSRTSADX VSRTSADX
lab val ODTHCLASS ODTHCLASS
lab val INTPRIM INTPRIM
lab val ERSTATUS ERSTATUS
lab val PRSTATUS PRSTATUS
lab val CSSCHEMA CSSCHEMA
lab val DAJCCT DAJCCT 
lab val DAJCCN DAJCCN 
lab val DAJCCM DAJCCM 
lab val DAJCCSTG DAJCCSTG 
lab val DSS1977S DSS1977S 
lab val SURGPRIF SURGPRIF 
lab val SURGSCOF SURGSCOF 
lab val SURGSITF SURGSITF 
lab val NUMNODES NUMNODES 
lab val NO_SURG NO_SURG 
lab val TYPE_FU TYPE_FU 
lab val AGE_1REC AGE_1REC 
lab val BEHTREND BEHTREND 
lab val HISTREC HISTREC 
lab val HISTRECB HISTRECB 
lab val cs0204schema cs0204schema 
lab val RAC_RECA RAC_RECA 
lab val RAC_RECY RAC_RECY 
lab val ORIGRECB ORIGRECB 
lab val HST_STGA HST_STGA
lab val SSS77VZ SSS77VZ 
lab val SSSM2KPZ SSSM2KPZ 
lab val FIRSTPRM FIRSTPRM
lab val VASINV VASINV
lab val SRV_TIME_MON SRV_TIME_MON
lab val SRV_TIME_MON_FLAG SRV_TIME_MON_FLAG
lab val INSREC_PUB INSREC_PUB
lab val DAJCC7T DAJCC7T
lab val DAJCC7N DAJCC7N
lab val DAJCC7M DAJCC7M
lab val DAJCC7STG DAJCC7STG
lab val ADJTM_6VALUE ADJTM_6VALUE
lab val ADJNM_6VALUE ADJNM_6VALUE
lab val ADJM_6VALUE ADJM_6VALUE
lab val ADJAJCCSTG ADJAJCCSTG
lab val CS7SITE CS7SITE
lab val CS9SITE CS9SITE
lab val CS12SITE CS12SITE
lab val her2 her2
lab val brst_sub brst_sub
lab val ANNARBOR  ANNARBOR
lab val SCMETSDXB_PUB  SCMETSDXB_PUB
lab val SCMETSDXBR_PUB SCMETSDXBR_PUB
lab val SCMETSDXLIV_PUB SCMETSDXLIV_PUB
lab val SCMETSDXLUNG_PUB SCMETSDXLUNG_PUB
lab val T_VALUE T_VALUE
lab val N_VALUE N_VALUE
lab val M_VALUE M_VALUE
lab val MALIGCOUNT MALIGCOUNT
lab val BENBORDCOUNT BENBORDCOUNT
lab val TUMSIZS TUMSIZS
lab val DASRCTS DASRCTS
lab val DASRCNS DASRCNS
lab val DASRCMS DASRCMS
lab val METSDXLN METSDXLN
lab val METSDXO METSDXO 

