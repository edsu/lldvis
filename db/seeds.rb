# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.destroycreate([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

  
# ActiveRecord::Base.connection.delete("delete from usecases_vocabs")
# ActiveRecord::Base.connection.delete("delete from topics_usecases")


#DELETE ALL SEED DATA
Vocab.all.each do |r| r.destroy end
Usecase.all.each do |r| r.destroy end
Topic.all.each do |r| r.destroy end
Usage.all.each do |r| r.destroy end

puts "Destroyed all previous records\n\n"

puts "Creating clusters & topics....\n\n"

cluster = Cluster.create(:name =>"CM. Conceptual Models and KOS")
Topic.create(:name => "CM.KNOWLEDGE-REPRESENTATION", :cluster_id => cluster.id)
Topic.create(:name => "CM.FRS", :cluster_id => cluster.id)
Topic.create(:name => "CM.NON-BIBLIO", :cluster_id => cluster.id)
Topic.create(:name => "CM.CITATIONS", :cluster_id => cluster.id)
Topic.create(:name => "CM.APP-PROFILES", :cluster_id => cluster.id)

cluster = Cluster.create(:name =>"LLD. Applying SemWeb Technology to Library Data (Implementation)")
Topic.create(:name => "LLD. LEGACY", :cluster_id => cluster.id)
Topic.create(:name => "LLD. AVAILABLE-LINKED-DATA", :cluster_id => cluster.id)
Topic.create(:name => "LLD. VOCABS-STATUS", :cluster_id => cluster.id)
Topic.create(:name => "LLD. MARC2LLD", :cluster_id => cluster.id)
Topic.create(:name => "LLD. REFERENCE-MODEL-FIT", :cluster_id => cluster.id)
Topic.create(:name => "LLD. COMMON-MODEL", :cluster_id => cluster.id)
Topic.create(:name => "LLD. AUTHORITIES", :cluster_id => cluster.id)
Topic.create(:name => "LLD. VOCABS", :cluster_id => cluster.id)
Topic.create(:name => "LLD. SPECIFIC-VOCABS", :cluster_id => cluster.id)
Topic.create(:name => "LLD. SKOS-FOR-INTEGRATED-KOS", :cluster_id => cluster.id)
Topic.create(:name => "LLD. SKOS-MULTILINGUAL", :cluster_id => cluster.id)
Topic.create(:name => "LLD. SKOS-LIB-KOS", :cluster_id => cluster.id)
Topic.create(:name => "LLD. PERSON-METADATA", :cluster_id => cluster.id)
Topic.create(:name => "LLD. PERSON-NAMES", :cluster_id => cluster.id)
Topic.create(:name => "LLD. IDENTIFIERS", :cluster_id => cluster.id)
Topic.create(:name => "LLD. INSTITUTION-IDS", :cluster_id => cluster.id)
Topic.create(:name => "LLD. LEGACY-IDS", :cluster_id => cluster.id)
Topic.create(:name => "LLD. NAMESPACES", :cluster_id => cluster.id)

cluster = Cluster.create(:name =>"SW. Semantic Web Environmental Issues")
Topic.create(:name => "SW. IDENTIFIERS", :cluster_id => cluster.id)
Topic.create(:name => "SW. LINKING", :cluster_id => cluster.id)
Topic.create(:name => "SW. LINKING-INVENTORY", :cluster_id => cluster.id)
Topic.create(:name => "SW. CROSS-LINKING-VOCABS", :cluster_id => cluster.id)
Topic.create(:name => "SW. IDENTIFIERS-RWO", :cluster_id => cluster.id)
Topic.create(:name => "SW. LD-V-RECORDS", :cluster_id => cluster.id)
Topic.create(:name => "SW. LD-PACKAGING", :cluster_id => cluster.id)
Topic.create(:name => "SW. PROVENANCE", :cluster_id => cluster.id)
Topic.create(:name => "SW. REST", :cluster_id => cluster.id)
Topic.create(:name => "SW. CONVERSION", :cluster_id => cluster.id)
Topic.create(:name => "SW. SKOS-EXTENSIONS", :cluster_id => cluster.id)
Topic.create(:name => "SW. DATA-EXTRACTION", :cluster_id => cluster.id)

cluster = Cluster.create(:name =>"DATA. Management of data and distribution")
Topic.create(:name => "DATA. GENERAL", :cluster_id => cluster.id)
Topic.create(:name => "DATA. VOCABS", :cluster_id => cluster.id)
Topic.create(:name => "DATA. VERSIONING", :cluster_id => cluster.id)
Topic.create(:name => "DATA. DISSEMINATION", :cluster_id => cluster.id)
Topic.create(:name => "DATA. CHANGES", :cluster_id => cluster.id)
Topic.create(:name => "DATA. OBSOLETE-VOCABS", :cluster_id => cluster.id)
Topic.create(:name => "DATA. ARCHITECTURE", :cluster_id => cluster.id)
Topic.create(:name => "DATA. CACHING", :cluster_id => cluster.id)
Topic.create(:name => "DATA. ONTOLOGY-DISCOVERY", :cluster_id => cluster.id)
Topic.create(:name => "DATA. SEARCH-OPTIMISATION", :cluster_id => cluster.id)

cluster = Cluster.create(:name =>"MGT. Community and Management Issues")
Topic.create(:name => "MGT. RIGHTS", :cluster_id => cluster.id)
Topic.create(:name => "MGT. LICENSES", :cluster_id => cluster.id)
Topic.create(:name => "MGT. GUIDANCE", :cluster_id => cluster.id)
Topic.create(:name => "MGT. WORKFLOWS", :cluster_id => cluster.id)
Topic.create(:name => "MGT. BIZ-MODELS", :cluster_id => cluster.id)
Topic.create(:name => "MGT. PATTERNS", :cluster_id => cluster.id)
Topic.create(:name => "MGT. COMMUNITY-BUILDING", :cluster_id => cluster.id)
Topic.create(:name => "MGT. TRAINING", :cluster_id => cluster.id)
Topic.create(:name => "MGT. LEGACY-MAPPING", :cluster_id => cluster.id)
Topic.create(:name => "MGT. STANDARDS-PARTICIPATION", :cluster_id => cluster.id)
Topic.create(:name => "MGT. OUTREACH", :cluster_id => cluster.id)
Topic.create(:name => "MGT. NEW-EFFORTS", :cluster_id => cluster.id)
Topic.create(:name => "MGT. NEXT-STEPS", :cluster_id => cluster.id)
Topic.create(:name => "MGT. FUTURE-WGS", :cluster_id => cluster.id)
Topic.create(:name => "MGT. BEST-PRACTICES-GP", :cluster_id => cluster.id)

cluster = Cluster.create(:name =>"USE. Consuming and using library data")
Topic.create(:name => "USE.END_USERS", :cluster_id => cluster.id)
Topic.create(:name => "USE.COMPU", :cluster_id => cluster.id)
Topic.create(:name => "USE.PRO", :cluster_id => cluster.id)

puts "Creating vocabs....\n\n"
vocabtype = Vocabtype.create(:name => "UNCLASSIFIED")
Vocab.create(:name => "Bibliographic Ontology",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "CIDOC-CRM",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "OWL",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "CITO",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "SURF",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "RDFS",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "W3C Media Ontology",:vocabtype_id => vocabtype.id)

vocabtype = Vocabtype.create(:name => "Existing published Vocabularies available for reuse")
# Vocab.create(:name => "",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "FOAF",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "RDA",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "RDA Group 1 Elements",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "RDA Group 2 Elements",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "SKOS",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "FRBR",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "FRBR Core",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "FRBRer",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "FRAD",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "FRSAD",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "OAI-ORE",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "DOAP",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "LoC Preservation Vocabularies",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "ISBD",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "BIBO",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "DC Terms",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "DC Types",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "EXIF",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "OPM",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "W3C Geo vocab",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "UMBEL",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "hcard",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "vcard",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "lexvo",:vocabtype_id => vocabtype.id)

vocabtype = Vocabtype.create(:name => "Local or special vocabularies")
Vocab.create(:name => "P20vocab",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "GND (Gemeinsame Normdatei) namespace",:vocabtype_id => vocabtype.id)

vocabtype = Vocabtype.create(:name => "Work in progress to create ontologies for")
Vocab.create(:name => "MADS",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "ISAD(G)",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "MODS",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "PREMIS",:vocabtype_id => vocabtype.id)

vocabtype = Vocabtype.create(:name => "Reference value vocabularies")
Vocab.create(:name => "VIAF",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "Geonames",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "ULAN",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "TGN",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "DDC",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "UDC",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "Iconclass",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "dbPedia",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "ASFA Thesaurus",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "Fisheries Reference Metadata",:vocabtype_id => vocabtype.id)
Vocab.create(:name => "USDA National Agricultural Library",:vocabtype_id => vocabtype.id)

# USE-CASES
# Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name(""))
puts "Creating use cases....\n\n"
usecase = Usecase.create(:name => "Authority Data Enrichment")
  Usage.create(:description =>"for works",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("RDA Group 1 Elements").id)
  Usage.create(:description =>"for persons, corporate bodies",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("FOAF").id)
  Usage.create(:description =>"for persons, corporate bodies and families",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("RDA Group 2 Elements").id)
usecase = Usecase.create(:name => "Digital Preservation")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("LoC Preservation Vocabularies").id)
  Usage.create(:description =>"to describe the structure of complex data objects",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("OAI-ORE"))
  Usage.create(:description =>"to describe software agents",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DOAP"))
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("PRONOM"))
usecase = Usecase.create(:name => "Bibliographic Network")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("FRBR Core"))
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("Bibliographic Ontology"))
usecase = Usecase.create(:name => "Publishing 20th Century Press Archives")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("OAI-ORE"))
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DC Terms"))
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("SKOS"))
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("EXIF"))
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("P20vocab"))
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("RDA Group 2 Elements"))

usecase = Usecase.create(:name => "Subject Search")
usecase = Usecase.create(:name => "Open Library Data")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("RDA Group 1 Elements"))
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("FOAF"))
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DC Terms"))
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("FRBR"))

usecase = Usecase.create(:name => "Europeana")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DC Terms").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("SKOS").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("OAI-ORE").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("CIDOC-CRM").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("FRBR").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("VIAF").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("Geonames").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("ULAN").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("TGN").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DDC").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("UDC").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("Iconclass").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("dbPedia").id)
  
usecase = Usecase.create(:name => "Language Technology")
  
usecase = Usecase.create(:name => "NDNP")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("OAI-ORE").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DC Terms").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("Bibliographic Ontology"))
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("FRBR").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("EXIF").id)
  
usecase = Usecase.create(:name => "Vocabulary Merging")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("SKOS").id)
  
usecase = Usecase.create(:name => "Bridging OWL and UML")

usecase = Usecase.create(:name => "Virtual International Authority File (VIAF)")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("VIAF").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("OWL").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("SKOS").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("FOAF").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("UMBEL").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("FRBR").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DC Terms").id)

usecase = Usecase.create(:name => "Component Vocabularies")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("SKOS").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("MADS").id)
  
usecase = Usecase.create(:name => "Digital Text Repository")

usecase = Usecase.create(:name => "Identification and deduplication of library records")
usecase = Usecase.create(:name => "NEP: New Economics Papers")
usecase = Usecase.create(:name => "Photo museum case")
usecase = Usecase.create(:name => "Browsing and searching in data repositories annotated with different thesauri")
usecase = Usecase.create(:name => "Radio Station Archive Digitisation")
usecase = Usecase.create(:name => "AGROVOC Thesaurus")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DC Terms").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("SKOS").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("OWL").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("ASFA Thesaurus").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("Fisheries Reference Metadata").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("USDA National Agricultural Library").id)

usecase = Usecase.create(:name => "AGRIS")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("SKOS").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("BIBO").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("FOAF").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DC Terms").id)
  
usecase = Usecase.create(:name => "FAO Authority Description Concept Scheme")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("SKOS").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("BIBO").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("FOAF").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DC Terms").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("RDA").id)
  
usecase = Usecase.create(:name => "Citation of Scientific Datasets")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("OPM").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("BIBO").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("CITO").id)
  
usecase = Usecase.create(:name => "Enhanced Publications")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("FOAF").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("OAI-ORE").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DC Terms").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DC Types").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("SURF").id)

usecase = Usecase.create(:name => "Regional Catalog")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("BIBO").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("RDA").id)
  
usecase = Usecase.create(:name => "Ranking Search Results by Popularity using Circulation Data")

usecase = Usecase.create(:name => "LOCAH")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("SKOS").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("BIBO").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("FOAF").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DC Terms").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("FRBR").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("RDFS").id)

usecase = Usecase.create(:name => "Archipel project")

usecase = Usecase.create(:name => "Use Cases NLL Digitized Map Archive")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("SKOS").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DC Terms").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("Geonames").id)

usecase = Usecase.create(:name => "Linked Data Service of the German National Library")

usecase = Usecase.create(:name => "Library Address Data")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DC Terms").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("Geonames").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("FOAF").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("hcard").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("vcard").id)

usecase = Usecase.create(:name => "Data BNF")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("SKOS").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("FOAF").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DC Terms").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("RDA").id)

usecase = Usecase.create(:name => "Collecting material related to courses at The Open University")
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("SKOS").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("FOAF").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("BIBO").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("DC Terms").id)
  Usage.create(:description =>"",:usecase_id => usecase.id,:vocab_id => Vocab.find_by_name("W3C Media Ontology").id)
  
usecase = Usecase.create(:name => "Talis Prism 3")
usecase = Usecase.create(:name => "Pode")
usecase = Usecase.create(:name => "Recollection")
usecase = Usecase.create(:name => "International Registry for Authors")
usecase = Usecase.create(:name => "Civil War Data 150")
usecase = Usecase.create(:name => "Mapping Scholarly Debate")
usecase = Usecase.create(:name => "Polymath Virtual Library")
usecase = Usecase.create(:name => "Community Information Service")
usecase = Usecase.create(:name => "AuthorClaim")



# # CREATE FUNDING STREAMS
# File.open("#{CSV_DIRECTORY_PATH}/Lookups-Funding Streams.csv",'r') do |csv_file|
#   first_row = true
#   FasterCSV.foreach(csv_file.path) do |row|
#     if first_row && CSV_FILE_CONTAINS_HEADER_ROW then
#       first_row = false
#       next #skip this iteration
#     end
#     Fundingstream.create(:title=>row[0],:funder_id=>Funder.find_by_title(row[1]).id)
#     puts "Created Fundingstream: #{row[0]}"
#   end
# end
# puts "---"

