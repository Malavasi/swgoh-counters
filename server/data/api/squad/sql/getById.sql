SELECT
	s.id,
	s.name,
	sv.toon1Id,
	char1.name as 'toon1Name',
	sv.isToon1Req,
	char2.name as 'toon2Name',
	sv.toon2Id,
	sv.isToon2Req,
	char3.name as 'toon3Name',
	sv.toon3Id,
	sv.isToon3Req,
	char4.name as 'toon4Name',
	sv.toon4Id,
	sv.isToon4Req,
	char5.name as 'toon5Name',
	sv.toon5Id,
	sv.isToon5Req,
	sv.description,
	sv.counterStrategy,
	s.latestVersionId,
	sv.createdOn,
	sv.createdBy
FROM squad s
JOIN squadVersion sv ON sv.id = s.latestVersionId
JOIN `character` char1 ON char1.id = sv.toon1Id
JOIN `character` char2 ON char2.id = sv.toon2Id
JOIN `character` char3 ON char3.id = sv.toon3Id
JOIN `character` char4 ON char4.id = sv.toon4Id
JOIN `character` char5 ON char5.id = sv.toon5Id
WHERE s.id = ?;