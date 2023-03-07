-- Cleanup

SPARQL CLEAR GRAPH <spin:demo:recruitment:rule>;
SPARQL DROP SPIN  LIBRARY <spin:demo:recruitment:rule> ; 


--Create Rule

SPARQL
PREFIX : <#>
PREFIX spin:  <http://spinrdf.org/spin#>
PREFIX sp: <http://spinrdf.org/sp#>
PREFIX recruitment: <http://demo.openlinksw.com/schemas/exec_rec_search/> 

WITH <spin:demo:recruitment:rule>
INSERT{
        recruitment:job_postings a owl:Class;
        rdfs:label "Job Posting";
        rdfs:comment """This Rule ensures that Job Postings are identified""";

        spin:rule[
                    
                    a sp:Construct;
                    sp:text """
                                #Skills
                                
                                prefix recruitment: <http://demo.openlinksw.com/schemas/exec_rec_search/>

                                CONSTRUCT {?s recruitment:hasSkill ?skill.}
                                WHERE
                                {{
                                GRAPH <urn:heidrick:demo:physical>
                                { 
                                    ?s a recruitment:job_postings;
                                    recruitment:skill_1|recruitment:skill_2|recruitment:skill_3 ?skill.

                                }
                                }}
                            """
                     
                ].
               
};

EXEC ('SPARQL ' || SPARQL_SPIN_GRAPH_TO_DEFSPIN('spin:demo:recruitment:rule'));

SPARQL
DEFINE input:macro-lib <spin:demo:recruitment:rule>
PREFIX recruitment: <http://demo.openlinksw.com/schemas/exec_rec_search/>
SELECT ?s ?skill
WHERE{

 ?s a recruitment:job_postings; recruitment:hasSkill ?skill.
}
