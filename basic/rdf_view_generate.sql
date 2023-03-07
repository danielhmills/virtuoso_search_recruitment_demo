grant select on "Demo"."search"."applicant_certifications" to SPARQL_SELECT;
grant select on "Demo"."search"."applicant_education" to SPARQL_SELECT;
grant select on "Demo"."search"."applicant_languages" to SPARQL_SELECT;
grant select on "Demo"."search"."applicant_positions" to SPARQL_SELECT;
grant select on "Demo"."search"."applicant_skills" to SPARQL_SELECT;
grant select on "Demo"."search"."applicants" to SPARQL_SELECT;
grant select on "Demo"."search"."job_postings" to SPARQL_SELECT;


SPARQL
prefix exec_rec_search: <http://demo.openlinksw.com/schemas/exec_rec_search/> 
create iri class exec_rec_search:applicant_certifications "http://^{URIQADefaultHost}^/exec_rec_search/applicant_certifications/id/%d#this" (in _id integer not null) . ;
SPARQL
prefix exec_rec_search: <http://demo.openlinksw.com/schemas/exec_rec_search/> 
create iri class exec_rec_search:applicant_education "http://^{URIQADefaultHost}^/exec_rec_search/applicant_education/id/%d#this" (in _id integer not null) . ;
SPARQL
prefix exec_rec_search: <http://demo.openlinksw.com/schemas/exec_rec_search/> 
create iri class exec_rec_search:applicant_languages "http://^{URIQADefaultHost}^/exec_rec_search/applicant_languages/applicant_id/%d/language/%U#this" (in _applicant_id integer not null,in _language varchar not null) . ;
SPARQL
prefix exec_rec_search: <http://demo.openlinksw.com/schemas/exec_rec_search/> 
create iri class exec_rec_search:applicant_positions "http://^{URIQADefaultHost}^/exec_rec_search/applicant_positions/applicant_id/%d/positions_company_name/%U/id/%d#this" (in _applicant_id integer not null,in _positions_company_name varchar not null,in _id integer not null) . ;
SPARQL
prefix exec_rec_search: <http://demo.openlinksw.com/schemas/exec_rec_search/> 
create iri class exec_rec_search:applicant_skills "http://^{URIQADefaultHost}^/exec_rec_search/applicant_skills/applicant_id/%d/skill_class/%U#this" (in _applicant_id integer not null,in _skill_class varchar not null) . ;
SPARQL
prefix exec_rec_search: <http://demo.openlinksw.com/schemas/exec_rec_search/> 
create iri class exec_rec_search:applicants "http://^{URIQADefaultHost}^/exec_rec_search/applicants/applicant_id/%d#this" (in _applicant_id integer not null) . ;
SPARQL
prefix exec_rec_search: <http://demo.openlinksw.com/schemas/exec_rec_search/> 
create iri class exec_rec_search:job_postings "http://^{URIQADefaultHost}^/exec_rec_search/job_postings/id/%d#this" (in _id integer not null) . ;


drop view "Demo"."search"."exec_rec_search__Total"; 
create view "Demo"."search"."exec_rec_search__Total" as select (cnt0*cnt1)+(cnt2*cnt3)+(cnt4*cnt5)+(cnt6*cnt7)+(cnt8*cnt9)+(cnt10*cnt11)+(cnt12*cnt13) AS cnt from 
 (select count(*) cnt0 from "Demo"."search"."applicant_certifications") tb0, 
 (select count(*)+1 as cnt1 from DB.DBA.TABLE_COLS where "TABLE" = 'Demo.search.applicant_certifications'  and "COLUMN" <> '_IDN') tb1,
 (select count(*) cnt2 from "Demo"."search"."applicant_education") tb2, 
 (select count(*)+1 as cnt3 from DB.DBA.TABLE_COLS where "TABLE" = 'Demo.search.applicant_education'  and "COLUMN" <> '_IDN') tb3,
 (select count(*) cnt4 from "Demo"."search"."applicant_languages") tb4, 
 (select count(*)+1 as cnt5 from DB.DBA.TABLE_COLS where "TABLE" = 'Demo.search.applicant_languages'  and "COLUMN" <> '_IDN') tb5,
 (select count(*) cnt6 from "Demo"."search"."applicant_positions") tb6, 
 (select count(*)+1 as cnt7 from DB.DBA.TABLE_COLS where "TABLE" = 'Demo.search.applicant_positions'  and "COLUMN" <> '_IDN') tb7,
 (select count(*) cnt8 from "Demo"."search"."applicant_skills") tb8, 
 (select count(*)+1 as cnt9 from DB.DBA.TABLE_COLS where "TABLE" = 'Demo.search.applicant_skills'  and "COLUMN" <> '_IDN') tb9,
 (select count(*) cnt10 from "Demo"."search"."applicants") tb10, 
 (select count(*)+1 as cnt11 from DB.DBA.TABLE_COLS where "TABLE" = 'Demo.search.applicants'  and "COLUMN" <> '_IDN') tb11,
 (select count(*) cnt12 from "Demo"."search"."job_postings") tb12, 
 (select count(*)+1 as cnt13 from DB.DBA.TABLE_COLS where "TABLE" = 'Demo.search.job_postings'  and "COLUMN" <> '_IDN') tb13
; 
grant select on "Demo"."search"."exec_rec_search__Total" to SPARQL_SELECT; 


SPARQL
prefix exec_rec_search: <http://demo.openlinksw.com/schemas/exec_rec_search/> 
prefix exec_rec_search-stat: <http://demo.openlinksw.com/exec_rec_search/stat#> 
prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> 
prefix void: <http://rdfs.org/ns/void#> 
prefix scovo: <http://purl.org/NET/scovo#> 
prefix aowl: <http://bblfish.net/work/atom-owl/2006-06-06/> 
alter quad storage virtrdf:DefaultQuadStorage 
 from "Demo"."search"."applicant_certifications" as applicant_certifications_s
 { 
   create exec_rec_search:qm-applicant_certifications as graph iri ("http://^{URIQADefaultHost}^/exec_rec_search#")  
    { 
      # Maps from columns of "Demo.search.applicant_certifications"
      exec_rec_search:applicant_certifications (applicant_certifications_s."id")  a exec_rec_search:applicant_certifications ;
      exec_rec_search:id applicant_certifications_s."id" as exec_rec_search:search-applicant_certifications-id ;
      exec_rec_search:certifications_name applicant_certifications_s."certifications_name" as exec_rec_search:search-applicant_certifications-certifications_name ;
      exec_rec_search:certifications_authority applicant_certifications_s."certifications_authority" as exec_rec_search:search-applicant_certifications-certifications_authority ;
      exec_rec_search:certifications_date applicant_certifications_s."certifications_date" as exec_rec_search:search-applicant_certifications-certifications_date .

    }
 }

;

SPARQL
prefix exec_rec_search: <http://demo.openlinksw.com/schemas/exec_rec_search/> 
prefix exec_rec_search-stat: <http://demo.openlinksw.com/exec_rec_search/stat#> 
prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> 
prefix void: <http://rdfs.org/ns/void#> 
prefix scovo: <http://purl.org/NET/scovo#> 
prefix aowl: <http://bblfish.net/work/atom-owl/2006-06-06/> 
alter quad storage virtrdf:DefaultQuadStorage 
 from "Demo"."search"."applicant_education" as applicant_education_s
 { 
   create exec_rec_search:qm-applicant_education as graph iri ("http://^{URIQADefaultHost}^/exec_rec_search#")  
    { 
      # Maps from columns of "Demo.search.applicant_education"
      exec_rec_search:applicant_education (applicant_education_s."id")  a exec_rec_search:applicant_education ;
      exec_rec_search:id applicant_education_s."id" as exec_rec_search:search-applicant_education-id ;
      exec_rec_search:education_school_name applicant_education_s."education_school_name" as exec_rec_search:search-applicant_education-education_school_name ;
      exec_rec_search:education_school_name_uri applicant_education_s."education_school_name_uri" as exec_rec_search:search-applicant_education-education_school_name_uri ;
      exec_rec_search:education_degree applicant_education_s."education_degree" as exec_rec_search:search-applicant_education-education_degree ;
      exec_rec_search:education_degree_uri applicant_education_s."education_degree_uri" as exec_rec_search:search-applicant_education-education_degree_uri ;
      exec_rec_search:education_field_of_study applicant_education_s."education_field_of_study" as exec_rec_search:search-applicant_education-education_field_of_study ;
      exec_rec_search:education_field_of_study_uri applicant_education_s."education_field_of_study_uri" as exec_rec_search:search-applicant_education-education_field_of_study_uri ;
      exec_rec_search:education_start_date applicant_education_s."education_start_date" as exec_rec_search:search-applicant_education-education_start_date ;
      exec_rec_search:education_end_date applicant_education_s."education_end_date" as exec_rec_search:search-applicant_education-education_end_date ;
      exec_rec_search:education_is_completed applicant_education_s."education_is_completed" as exec_rec_search:search-applicant_education-education_is_completed .

    }
 }

;

SPARQL
prefix exec_rec_search: <http://demo.openlinksw.com/schemas/exec_rec_search/> 
prefix exec_rec_search-stat: <http://demo.openlinksw.com/exec_rec_search/stat#> 
prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> 
prefix void: <http://rdfs.org/ns/void#> 
prefix scovo: <http://purl.org/NET/scovo#> 
prefix aowl: <http://bblfish.net/work/atom-owl/2006-06-06/> 
alter quad storage virtrdf:DefaultQuadStorage 
 from "Demo"."search"."applicant_languages" as applicant_languages_s
 { 
   create exec_rec_search:qm-applicant_languages as graph iri ("http://^{URIQADefaultHost}^/exec_rec_search#")  
    { 
      # Maps from columns of "Demo.search.applicant_languages"
      exec_rec_search:applicant_languages (applicant_languages_s."applicant_id",applicant_languages_s."language")  a exec_rec_search:applicant_languages ;
      exec_rec_search:id applicant_languages_s."id" as exec_rec_search:search-applicant_languages-id ;
      exec_rec_search:applicant_id applicant_languages_s."applicant_id" as exec_rec_search:search-applicant_languages-applicant_id ;
      exec_rec_search:language applicant_languages_s."language" as exec_rec_search:search-applicant_languages-language ;
      exec_rec_search:proficiency applicant_languages_s."proficiency" as exec_rec_search:search-applicant_languages-proficiency .

    }
 }

;

SPARQL
prefix exec_rec_search: <http://demo.openlinksw.com/schemas/exec_rec_search/> 
prefix exec_rec_search-stat: <http://demo.openlinksw.com/exec_rec_search/stat#> 
prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> 
prefix void: <http://rdfs.org/ns/void#> 
prefix scovo: <http://purl.org/NET/scovo#> 
prefix aowl: <http://bblfish.net/work/atom-owl/2006-06-06/> 
alter quad storage virtrdf:DefaultQuadStorage 
 from "Demo"."search"."applicant_positions" as applicant_positions_s
 { 
   create exec_rec_search:qm-applicant_positions as graph iri ("http://^{URIQADefaultHost}^/exec_rec_search#")  
    { 
      # Maps from columns of "Demo.search.applicant_positions"
      exec_rec_search:applicant_positions (applicant_positions_s."applicant_id",applicant_positions_s."positions_company_name",applicant_positions_s."id")  a exec_rec_search:applicant_positions ;
      exec_rec_search:id applicant_positions_s."id" as exec_rec_search:search-applicant_positions-id ;
      exec_rec_search:applicant_id applicant_positions_s."applicant_id" as exec_rec_search:search-applicant_positions-applicant_id ;
      exec_rec_search:positions_company_name applicant_positions_s."positions_company_name" as exec_rec_search:search-applicant_positions-positions_company_name ;
      exec_rec_search:positions_company_uri applicant_positions_s."positions_company_uri" as exec_rec_search:search-applicant_positions-positions_company_uri ;
      exec_rec_search:positions_title applicant_positions_s."positions_title" as exec_rec_search:search-applicant_positions-positions_title ;
      exec_rec_search:positions_title_uri applicant_positions_s."positions_title_uri" as exec_rec_search:search-applicant_positions-positions_title_uri ;
      exec_rec_search:positions_startdate applicant_positions_s."positions_startDate" as exec_rec_search:search-applicant_positions-positions_startdate ;
      exec_rec_search:positions_enddate applicant_positions_s."positions_endDate" as exec_rec_search:search-applicant_positions-positions_enddate ;
      exec_rec_search:positions_iscurrent applicant_positions_s."positions_isCurrent" as exec_rec_search:search-applicant_positions-positions_iscurrent ;
      exec_rec_search:positions_summary applicant_positions_s."positions_summary" as exec_rec_search:search-applicant_positions-positions_summary ;
      exec_rec_search:positions_duration_years applicant_positions_s."positions_duration_years" as exec_rec_search:search-applicant_positions-positions_duration_years .

    }
 }

;

SPARQL
prefix exec_rec_search: <http://demo.openlinksw.com/schemas/exec_rec_search/> 
prefix exec_rec_search-stat: <http://demo.openlinksw.com/exec_rec_search/stat#> 
prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> 
prefix void: <http://rdfs.org/ns/void#> 
prefix scovo: <http://purl.org/NET/scovo#> 
prefix aowl: <http://bblfish.net/work/atom-owl/2006-06-06/> 
alter quad storage virtrdf:DefaultQuadStorage 
 from "Demo"."search"."applicant_skills" as applicant_skills_s
 { 
   create exec_rec_search:qm-applicant_skills as graph iri ("http://^{URIQADefaultHost}^/exec_rec_search#")  
    { 
      # Maps from columns of "Demo.search.applicant_skills"
      exec_rec_search:applicant_skills (applicant_skills_s."applicant_id",applicant_skills_s."skill_class")  a exec_rec_search:applicant_skills ;
      exec_rec_search:id applicant_skills_s."id" as exec_rec_search:search-applicant_skills-id ;
      exec_rec_search:applicant_id applicant_skills_s."applicant_id" as exec_rec_search:search-applicant_skills-applicant_id ;
      exec_rec_search:skill_class applicant_skills_s."skill_class" as exec_rec_search:search-applicant_skills-skill_class ;
      exec_rec_search:skill_name applicant_skills_s."skill_name" as exec_rec_search:search-applicant_skills-skill_name ;
      exec_rec_search:skill_level applicant_skills_s."skill_level" as exec_rec_search:search-applicant_skills-skill_level .

    }
 }

;

SPARQL
prefix exec_rec_search: <http://demo.openlinksw.com/schemas/exec_rec_search/> 
prefix exec_rec_search-stat: <http://demo.openlinksw.com/exec_rec_search/stat#> 
prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> 
prefix void: <http://rdfs.org/ns/void#> 
prefix scovo: <http://purl.org/NET/scovo#> 
prefix aowl: <http://bblfish.net/work/atom-owl/2006-06-06/> 
alter quad storage virtrdf:DefaultQuadStorage 
 from "Demo"."search"."applicants" as applicants_s
 { 
   create exec_rec_search:qm-applicants as graph iri ("http://^{URIQADefaultHost}^/exec_rec_search#")  
    { 
      # Maps from columns of "Demo.search.applicants"
      exec_rec_search:applicants (applicants_s."applicant_id")  a exec_rec_search:applicants ;
      exec_rec_search:applicant_id applicants_s."applicant_id" as exec_rec_search:search-applicants-applicant_id ;
      exec_rec_search:first_name applicants_s."first_name" as exec_rec_search:search-applicants-first_name ;
      exec_rec_search:last_name applicants_s."last_name" as exec_rec_search:search-applicants-last_name ;
      exec_rec_search:email applicants_s."email" as exec_rec_search:search-applicants-email ;
      exec_rec_search:phone_number applicants_s."phone_number" as exec_rec_search:search-applicants-phone_number ;
      exec_rec_search:street_address applicants_s."street_address" as exec_rec_search:search-applicants-street_address ;
      exec_rec_search:city applicants_s."city" as exec_rec_search:search-applicants-city ;
      exec_rec_search:state applicants_s."state" as exec_rec_search:search-applicants-state ;
      exec_rec_search:zip_code applicants_s."zip_code" as exec_rec_search:search-applicants-zip_code ;
      exec_rec_search:location_uri applicants_s."location_uri" as exec_rec_search:search-applicants-location_uri ;
      exec_rec_search:state_uri applicants_s."state_uri" as exec_rec_search:search-applicants-state_uri .

    }
 }

;

SPARQL
prefix exec_rec_search: <http://demo.openlinksw.com/schemas/exec_rec_search/> 
prefix exec_rec_search-stat: <http://demo.openlinksw.com/exec_rec_search/stat#> 
prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> 
prefix void: <http://rdfs.org/ns/void#> 
prefix scovo: <http://purl.org/NET/scovo#> 
prefix aowl: <http://bblfish.net/work/atom-owl/2006-06-06/> 
alter quad storage virtrdf:DefaultQuadStorage 
 from "Demo"."search"."job_postings" as job_postings_s
 { 
   create exec_rec_search:qm-job_postings as graph iri ("http://^{URIQADefaultHost}^/exec_rec_search#")  
    { 
      # Maps from columns of "Demo.search.job_postings"
      exec_rec_search:job_postings (job_postings_s."id")  a exec_rec_search:job_postings ;
      exec_rec_search:id job_postings_s."id" as exec_rec_search:search-job_postings-id ;
      exec_rec_search:company job_postings_s."company" as exec_rec_search:search-job_postings-company ;
      exec_rec_search:company_class job_postings_s."company_class" as exec_rec_search:search-job_postings-company_class ;
      exec_rec_search:title job_postings_s."title" as exec_rec_search:search-job_postings-title ;
      exec_rec_search:title_dbpedia job_postings_s."title_dbpedia" as exec_rec_search:search-job_postings-title_dbpedia ;
      exec_rec_search:title_class job_postings_s."title_class" as exec_rec_search:search-job_postings-title_class ;
      exec_rec_search:category job_postings_s."category" as exec_rec_search:search-job_postings-category ;
      exec_rec_search:employment_type job_postings_s."employment_type" as exec_rec_search:search-job_postings-employment_type ;
      exec_rec_search:location job_postings_s."location" as exec_rec_search:search-job_postings-location ;
      exec_rec_search:skill_1 job_postings_s."skill_1" as exec_rec_search:search-job_postings-skill_1 ;
      exec_rec_search:skill_2 job_postings_s."skill_2" as exec_rec_search:search-job_postings-skill_2 ;
      exec_rec_search:skill_3 job_postings_s."skill_3" as exec_rec_search:search-job_postings-skill_3 ;
      exec_rec_search:skill_1_class job_postings_s."skill_1_class" as exec_rec_search:search-job_postings-skill_1_class ;
      exec_rec_search:skill_2_class job_postings_s."skill_2_class" as exec_rec_search:search-job_postings-skill_2_class ;
      exec_rec_search:skill_3_class job_postings_s."skill_3_class" as exec_rec_search:search-job_postings-skill_3_class .

    }
 }

;

SPARQL
prefix exec_rec_search: <http://demo.openlinksw.com/schemas/exec_rec_search/> 
prefix exec_rec_search-stat: <http://demo.openlinksw.com/exec_rec_search/stat#> 
prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> 
prefix void: <http://rdfs.org/ns/void#> 
prefix scovo: <http://purl.org/NET/scovo#> 
prefix aowl: <http://bblfish.net/work/atom-owl/2006-06-06/> 
alter quad storage virtrdf:DefaultQuadStorage 
 from "Demo"."search"."applicant_certificationsCount" as applicant_certificationscount_s
 from "Demo"."search"."applicant_educationCount" as applicant_educationcount_s
 from "Demo"."search"."applicant_languagesCount" as applicant_languagescount_s
 from "Demo"."search"."applicant_positionsCount" as applicant_positionscount_s
 from "Demo"."search"."applicant_skillsCount" as applicant_skillscount_s
 from "Demo"."search"."applicantsCount" as applicantscount_s
 from "Demo"."search"."job_postingsCount" as job_postingscount_s
 from "Demo"."search"."exec_rec_search__Total" as exec_rec_search__total_s
 { 
   create exec_rec_search:qm-VoidStatistics as graph iri ("http://^{URIQADefaultHost}^/exec_rec_search#") option (exclusive) 
    { 
      # voID Statistics 
      exec_rec_search-stat: a void:Dataset as exec_rec_search:dataset-demo ; 
       void:sparqlEndpoint <http://demo.openlinksw.com/sparql> as exec_rec_search:dataset-sparql-demo ; 
      void:statItem exec_rec_search-stat:Stat . 
      exec_rec_search-stat:Stat a scovo:Item ; 
       rdf:value exec_rec_search__total_s.cnt as exec_rec_search:stat-decl-demo ; 
       scovo:dimension void:numOfTriples . 

      exec_rec_search-stat: void:statItem exec_rec_search-stat:applicant_certificationsStat as exec_rec_search:statitem-demo-applicant_certifications . 
      exec_rec_search-stat:applicant_certificationsStat a scovo:Item as exec_rec_search:statitem-decl-demo-applicant_certifications ; 
      rdf:value applicant_certificationscount_s.cnt as exec_rec_search:statitem-cnt-demo-applicant_certifications ; 
      scovo:dimension void:numberOfResources as exec_rec_search:statitem-type-1-demo-applicant_certifications ; 
      scovo:dimension exec_rec_search:applicant_certifications as exec_rec_search:statitem-type-2-demo-applicant_certifications .

      exec_rec_search-stat: void:statItem exec_rec_search-stat:applicant_educationStat as exec_rec_search:statitem-demo-applicant_education . 
      exec_rec_search-stat:applicant_educationStat a scovo:Item as exec_rec_search:statitem-decl-demo-applicant_education ; 
      rdf:value applicant_educationcount_s.cnt as exec_rec_search:statitem-cnt-demo-applicant_education ; 
      scovo:dimension void:numberOfResources as exec_rec_search:statitem-type-1-demo-applicant_education ; 
      scovo:dimension exec_rec_search:applicant_education as exec_rec_search:statitem-type-2-demo-applicant_education .

      exec_rec_search-stat: void:statItem exec_rec_search-stat:applicant_languagesStat as exec_rec_search:statitem-demo-applicant_languages . 
      exec_rec_search-stat:applicant_languagesStat a scovo:Item as exec_rec_search:statitem-decl-demo-applicant_languages ; 
      rdf:value applicant_languagescount_s.cnt as exec_rec_search:statitem-cnt-demo-applicant_languages ; 
      scovo:dimension void:numberOfResources as exec_rec_search:statitem-type-1-demo-applicant_languages ; 
      scovo:dimension exec_rec_search:applicant_languages as exec_rec_search:statitem-type-2-demo-applicant_languages .

      exec_rec_search-stat: void:statItem exec_rec_search-stat:applicant_positionsStat as exec_rec_search:statitem-demo-applicant_positions . 
      exec_rec_search-stat:applicant_positionsStat a scovo:Item as exec_rec_search:statitem-decl-demo-applicant_positions ; 
      rdf:value applicant_positionscount_s.cnt as exec_rec_search:statitem-cnt-demo-applicant_positions ; 
      scovo:dimension void:numberOfResources as exec_rec_search:statitem-type-1-demo-applicant_positions ; 
      scovo:dimension exec_rec_search:applicant_positions as exec_rec_search:statitem-type-2-demo-applicant_positions .

      exec_rec_search-stat: void:statItem exec_rec_search-stat:applicant_skillsStat as exec_rec_search:statitem-demo-applicant_skills . 
      exec_rec_search-stat:applicant_skillsStat a scovo:Item as exec_rec_search:statitem-decl-demo-applicant_skills ; 
      rdf:value applicant_skillscount_s.cnt as exec_rec_search:statitem-cnt-demo-applicant_skills ; 
      scovo:dimension void:numberOfResources as exec_rec_search:statitem-type-1-demo-applicant_skills ; 
      scovo:dimension exec_rec_search:applicant_skills as exec_rec_search:statitem-type-2-demo-applicant_skills .

      exec_rec_search-stat: void:statItem exec_rec_search-stat:applicantsStat as exec_rec_search:statitem-demo-applicants . 
      exec_rec_search-stat:applicantsStat a scovo:Item as exec_rec_search:statitem-decl-demo-applicants ; 
      rdf:value applicantscount_s.cnt as exec_rec_search:statitem-cnt-demo-applicants ; 
      scovo:dimension void:numberOfResources as exec_rec_search:statitem-type-1-demo-applicants ; 
      scovo:dimension exec_rec_search:applicants as exec_rec_search:statitem-type-2-demo-applicants .

      exec_rec_search-stat: void:statItem exec_rec_search-stat:job_postingsStat as exec_rec_search:statitem-demo-job_postings . 
      exec_rec_search-stat:job_postingsStat a scovo:Item as exec_rec_search:statitem-decl-demo-job_postings ; 
      rdf:value job_postingscount_s.cnt as exec_rec_search:statitem-cnt-demo-job_postings ; 
      scovo:dimension void:numberOfResources as exec_rec_search:statitem-type-1-demo-job_postings ; 
      scovo:dimension exec_rec_search:job_postings as exec_rec_search:statitem-type-2-demo-job_postings .

    }
 }
;



-- Virtual directories for instance data
DB.DBA.URLREWRITE_CREATE_REGEX_RULE (
'exec_rec_search_rule2',
1,
'(/[^#]*)',
vector('path'),
1,
'/sparql?query=DESCRIBE+%%3Chttp%%3A//^{URIQADefaultHost}^%U%%23this%%3E+FROM+%%3Chttp%%3A//^{URIQADefaultHost}^/exec_rec_search%%23%%3E&format=%U',
vector('path', '*accept*'),
null,
'(text/rdf.n3)|(application/rdf.xml)|(text/n3)|(application/json)|(text/turtle)',
2,
null
);
DB.DBA.URLREWRITE_CREATE_REGEX_RULE (
'exec_rec_search_rule4',
1,
'/exec_rec_search/stat([^#]*)',
vector('path'),
1,
'/sparql?query=DESCRIBE+%%3Chttp%%3A//^{URIQADefaultHost}^/exec_rec_search/stat%%23%%3E+%%3Fo+FROM+%%3Chttp%%3A//^{URIQADefaultHost}^/exec_rec_search%%23%%3E+WHERE+{+%%3Chttp%%3A//^{URIQADefaultHost}^/exec_rec_search/stat%%23%%3E+%%3Fp+%%3Fo+}&format=%U',
vector('*accept*'),
null,
'(text/rdf.n3)|(application/rdf.xml)|(text/n3)|(application/json)|(text/turtle)',
2,
null
);
DB.DBA.URLREWRITE_CREATE_REGEX_RULE (
'exec_rec_search_rule6',
1,
'/exec_rec_search/objects/([^#]*)',
vector('path'),
1,
'/sparql?query=DESCRIBE+%%3Chttp%%3A//^{URIQADefaultHost}^/exec_rec_search/objects/%U%%3E+FROM+%%3Chttp%%3A//^{URIQADefaultHost}^/exec_rec_search%%23%%3E&format=%U',
vector('path', '*accept*'),
null,
'(text/rdf.n3)|(application/rdf.xml)|(text/n3)|(application/json)|(text/turtle)',
2,
null
);
DB.DBA.URLREWRITE_CREATE_REGEX_RULE (
'exec_rec_search_rule1',
1,
'([^#]*)',
vector('path'),
1,
'/describe/?url=http%%3A//^{URIQADefaultHost}^%U%%23this&graph=http%%3A//^{URIQADefaultHost}^/exec_rec_search%%23&distinct=0',
vector('path'),
null,
null,
2,
303
);
DB.DBA.URLREWRITE_CREATE_REGEX_RULE (
'exec_rec_search_rule7',
1,
'/exec_rec_search/stat([^#]*)',
vector('path'),
1,
'/describe/?url=http%%3A//^{URIQADefaultHost}^/exec_rec_search/stat%%23&graph=http%%3A//^{URIQADefaultHost}^/exec_rec_search%%23',
vector('path'),
null,
null,
2,
303
);
DB.DBA.URLREWRITE_CREATE_REGEX_RULE (
'exec_rec_search_rule5',
1,
'/exec_rec_search/objects/(.*)',
vector('path'),
1,
'/services/rdf/object.binary?path=%%2Fexec_rec_search%%2Fobjects%%2F%U&accept=%U',
vector('path', '*accept*'),
null,
null,
2,
null
);
DB.DBA.URLREWRITE_CREATE_RULELIST ( 'exec_rec_search_rule_list1', 1, vector ( 'exec_rec_search_rule1', 'exec_rec_search_rule7', 'exec_rec_search_rule5', 'exec_rec_search_rule2', 'exec_rec_search_rule4', 'exec_rec_search_rule6'));
DB.DBA.VHOST_REMOVE (lpath=>'/exec_rec_search');
DB.DBA.VHOST_DEFINE (lpath=>'/exec_rec_search', ppath=>'/', vsp_user=>'dba', is_dav=>0,
is_brws=>0, opts=>vector ('url_rewrite', 'exec_rec_search_rule_list1')
);

-- Virtual directories for ontology
DB.DBA.URLREWRITE_CREATE_REGEX_RULE (
'exec_rec_search_owl_rule2',
1,
'(/[^#]*)',
vector('path'),
1,
'/sparql?query=DESCRIBE+%%3Chttp%%3A//^{URIQADefaultHost}^%U%%3E+FROM+%%3Chttp%%3A//^{URIQADefaultHost}^/schemas/exec_rec_search%%23%%3E&format=%U',
vector('path', '*accept*'),
null,
'(text/rdf.n3)|(application/rdf.xml)|(text/n3)|(application/json)|(text/turtle)',
2,
null
);
DB.DBA.URLREWRITE_CREATE_REGEX_RULE (
'exec_rec_search_owl_rule1',
1,
'([^#]*)',
vector('path'),
1,
'/describe/?url=http://^{URIQADefaultHost}^%U',
vector('path'),
null,
null,
2,
303
);
DB.DBA.URLREWRITE_CREATE_RULELIST ( 'exec_rec_search_owl_rule_list1', 1, vector ( 'exec_rec_search_owl_rule1', 'exec_rec_search_owl_rule2'));
DB.DBA.VHOST_REMOVE (lpath=>'/schemas/exec_rec_search');
DB.DBA.VHOST_DEFINE (lpath=>'/schemas/exec_rec_search', ppath=>'/', vsp_user=>'dba', is_dav=>0,
is_brws=>0, opts=>vector ('url_rewrite', 'exec_rec_search_owl_rule_list1')
);