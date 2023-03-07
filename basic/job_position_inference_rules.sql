-- Cleanup

SPARQL CLEAR GRAPH <spin:demo:recruitment:jobhopping:rule>;
SPARQL DROP SPIN  LIBRARY <spin:demo:recruitment:jobhopping:rule> ; 


--Create Rule

SPARQL
PREFIX : <#>
PREFIX spin:  <http://spinrdf.org/spin#>
PREFIX sp: <http://spinrdf.org/sp#>
PREFIX recruitment: <http://demo.openlinksw.com/schemas/exec_rec_search/> 

WITH <spin:demo:recruitment:jobhopping:rule>
INSERT{
        recruitment:applicants a owl:Class;
        rdfs:label "Applicant";
        rdfs:comment """This Rule ensures that Applicants are identified""";

        spin:rule[
                    
                    a sp:Construct;
                    sp:text """
                                #Job Hopping

                                PREFIX recruitment: <http://demo.openlinksw.com/schemas/exec_rec_search/>

                                CONSTRUCT
                                {?applicant recruitment:hasJobHopperStatus ?jobHopperWarning} 
                                
                                WHERE
                                {
                                  {
                                    ?position a recruitment:applicant_positions;
                                    recruitment:applicant_id ?applicant_id;
                                    recruitment:positions_startdate ?startDate;
                                    recruitment:positions_enddate ?endDate.
                                    BIND(bif:datediff( 'year', xsd:dateTime( str(?startDate) ), xsd:dateTime( str(?endDate) ) ) as ?years).
                                    BIND(IF(?years < 3, recruitment:JobHoppingRisk, recruitment:NoJobHoppingRisk) AS ?jobHopperWarning).
                                    
                                    ?applicant a recruitment:applicants;
                                    recruitment:applicant_id ?applicant_id.
                                  }
                                }
                            """
                     
                ].
               
};

EXEC ('SPARQL ' || SPARQL_SPIN_GRAPH_TO_DEFSPIN('spin:demo:recruitment:jobhopping:rule'));

-- Test 0: Query With Inference Rule
SPARQL
DEFINE input:macro-lib <spin:demo:recruitment:jobhopping:rule>
PREFIX recruitment: <http://demo.openlinksw.com/schemas/exec_rec_search/>
SELECT DISTINCT
  ?s 
  ?jobHoppingRisk
WHERE
{
 ?s a recruitment:applicants; 
 recruitment:hasJobHopperStatus ?jobHoppingRisk.
};

-- Test 1: Query With Inference Rule
SPARQL
#DEFINE input:macro-lib <spin:demo:recruitment:jobhopping:rule>
PREFIX recruitment: <http://demo.openlinksw.com/schemas/exec_rec_search/>
SELECT DISTINCT
  ?s 
  ?jobHoppingRisk
WHERE
{
 ?s a recruitment:applicants; 
 recruitment:hasJobHopperStatus ?jobHoppingRisk.
};