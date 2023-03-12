UPDATE origem
SET OperatingSystem = 'No Information'
WHERE OperatingSystem IS NULL;

UPDATE origem
SET CompanySize = 'No Information'
WHERE CompanySize IS NULL;

UPDATE origem
SET Country = 'No Information'
WHERE Country IS NULL;

UPDATE origem
SET CommunicationTools = 'No Information'
WHERE CommunicationTools IS NULL;

UPDATE origem
SET LanguageWorkedWith = 'No Information'
WHERE LanguageWorkedWith IS NULL;

UPDATE origem
SET LanguageDesireNextYear = 'No Information'
WHERE LanguageDesireNextYear IS NULL;

UPDATE origem
SET ConvertedSalary = 0
WHERE ConvertedSalary IS NULL;

UPDATE origem
SET OpenSource = 0
WHERE OpenSource LIKE '%No%';

UPDATE origem
SET OpenSource = 1
WHERE OpenSource LIKE '%Yes%';

UPDATE origem
SET Hobby = 0
WHERE Hobby LIKE '%No%';

UPDATE origem
SET Hobby = 1
WHERE Hobby LIKE '%Yes%';