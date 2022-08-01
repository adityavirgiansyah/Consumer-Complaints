
-- find out how many complaints were received and sent on the same day?

SELECT
	Date_Received, 
	Date_Sent_To_Company
FROM
	PortofolioProject.dbo.['P9-ConsumerComplaints$']
WHERE
	Date_Received = Date_Sent_To_Company;

-- Extract the complaints received in the states of new york?

SELECT
	Date_Received, 
	State_Name
FROM
	PortofolioProject.dbo.['P9-ConsumerComplaints$']
WHERE
	State_Name = 'NY'

-- Extract the complaints received in the states of new york and california?

SELECT
	Date_Received,
	State_Name
FROM
	PortofolioProject.dbo.['P9-ConsumerComplaints$']
WHERE
	State_Name = 'NY' OR (State_Name = 'CA')

-- Extract all rows with the word 'Credit' in the Product Field

SELECT
	Product_Name
FROM
	PortofolioProject.dbo.['P9-ConsumerComplaints$']
WHERE
	Product_Name LIKE ('%Credit%')

-- Extract all rows with the word 'Late' in the Issue Field

SELECT
	Issue
FROM
	PortofolioProject.dbo.['P9-ConsumerComplaints$']
WHERE
	Issue LIKE ('%Late%')
	