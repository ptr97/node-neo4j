// Teams creation
CREATE (gsw: Team {code: "GSW", name: "Golden State Warriors"});
CREATE (lal: Team {code: "LAL", name: "Los Angeles Lakers"});
CREATE (bos: Team {code: "BOS", name: "Boston Celtics"});
CREATE (dal: Team {code: "DAL", name: "Dallas Mavericks"});

// Players with relation creation
// Players for GSW
CREATE (p: Player {firstName: "Stepehen", lastName: "Curry", height: 191, shirtNumber: 30});
MATCH (p:Player {lastName: "Curry"})
MATCH (t:Team {code: "GSW"})
MERGE (p)-[:PLAYS_FOR]->(t);

CREATE (p: Player {firstName: "Klay", lastName: "Thompson", height: 198, shirtNumber: 11});
MATCH (p:Player {lastName: "Thompson"})
MATCH (t:Team {code: "GSW"})
MERGE (p)-[:PLAYS_FOR]->(t);

CREATE (p: Player {firstName: "Draymond", lastName: "Green", height: 201, shirtNumber: 23});
MATCH (p:Player {lastName: "Green", firstName: "Draymond"})
MATCH (t:Team {code: "GSW"})
MERGE (p)-[:PLAYS_FOR]->(t);

CREATE (p: Player {firstName: "D'Angelo", lastName: "Russel", height: 196, shirtNumber: 0});
MATCH (p:Player {lastName: "Russel", firstName: "D'Angelo"})
MATCH (t:Team {code: "GSW"})
MERGE (p)-[:PLAYS_FOR]->(t);

// Players for LAL
CREATE (p: Player {firstName: "LeBron", lastName: "James", height: 206, shirtNumber: 23});
MATCH (p:Player {firstName: "LeBron", lastName: "James"})
MATCH (t:Team {code: "LAL"})
MERGE (p)-[:PLAYS_FOR]->(t);

CREATE (p: Player {firstName: "Antohny", lastName: "Davis", height: 208, shirtNumber: 3});
MATCH (p:Player {firstName: "Antohny", lastName: "Davis"})
MATCH (t:Team {code: "LAL"})
MERGE (p)-[:PLAYS_FOR]->(t);

CREATE (p: Player {firstName: "Rajon", lastName: "Rondo", height: 185, shirtNumber: 9});
MATCH (p:Player {firstName: "Rajon", lastName: "Rondo"})
MATCH (t:Team {code: "LAL"})
MERGE (p)-[:PLAYS_FOR]->(t);

CREATE (p: Player {firstName: "Kyle", lastName: "Kuzma", height: 206, shirtNumber: 23});
MATCH (p:Player {firstName: "Kyle", lastName: "Kuzma"})
MATCH (t:Team {code: "LAL"})
MERGE (p)-[:PLAYS_FOR]->(t);

// Players for Boston
CREATE (p: Player {firstName: "Jayson", lastName: "Tatum", height: 203, shirtNumber: 0});
MATCH (p:Player {firstName: "Jayson", lastName: "Tatum"})
MATCH (t:Team {code: "BOS"})
MERGE (p)-[:PLAYS_FOR]->(t);

CREATE (p: Player {firstName: "Kemba", lastName: "Walker", height: 185, shirtNumber: 8});
MATCH (p:Player {firstName: "Kemba", lastName: "Walker"})
MATCH (t:Team {code: "BOS"})
MERGE (p)-[:PLAYS_FOR]->(t);

CREATE (p: Player {firstName: "Marcus", lastName: "Smart", height: 193, shirtNumber: 36});
MATCH (p:Player {firstName: "Marcus", lastName: "Smart"})
MATCH (t:Team {code: "BOS"})
MERGE (p)-[:PLAYS_FOR]->(t);

CREATE (p: Player {firstName: "Gordon", lastName: "Hayward", height: 203, shirtNumber: 20});
MATCH (p:Player {firstName: "Gordon", lastName: "Hayward"})
MATCH (t:Team {code: "BOS"})
MERGE (p)-[:PLAYS_FOR]->(t);

// Players for Dallas
CREATE (p: Player {firstName: "Luka", lastName: "Doncic", height: 201, shirtNumber: 77});
MATCH (p:Player {firstName: "Luka", lastName: "Doncic"})
MATCH (t:Team {code: "DAL"})
MERGE (p)-[:PLAYS_FOR]->(t);

CREATE (p: Player {firstName: "Kristaps", lastName: "Porzingis", height: 221, shirtNumber: 6});
MATCH (p:Player {firstName: "Kristaps", lastName: "Porzingis"})
MATCH (t:Team {code: "DAL"})
MERGE (p)-[:PLAYS_FOR]->(t);

CREATE (p: Player {firstName: "Tim", lastName: "Hardaway Jr.", height: 198, shirtNumber: 11});
MATCH (p:Player {firstName: "Tim", lastName: "Hardaway Jr."})
MATCH (t:Team {code: "DAL"})
MERGE (p)-[:PLAYS_FOR]->(t);


// MATCH (n) DETACH DELETE n // clear whole DB
