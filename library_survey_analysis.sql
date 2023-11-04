Select *
From PortfolioProject..LibrarySurvey

----According to the survey results, what are the primary reasons for students coming to the library?

Select primaryReasonForLibraryVisit, 
	Count(*) as countOfVisitReason, 
	Count(*) * 100.0 / Sum(Count(*)) Over () as percentReasonOfVisit
From PortfolioProject..LibrarySurvey
Group By primaryReasonForLibraryVisit
Order By percentReasonOfVisit Desc

--Of the students who primarily come to the library to study, which methods of studying do they prefer?

Select primaryMethodOfStudy,
	Count(*) as countOfStudyMethod,
	Count(*) * 100.0 / Sum(Count(*)) Over () as percentStudyMethod
From PortfolioProject..LibrarySurvey
Where primaryReasonForLibraryVisit = 'Studying'
Group By primaryMethodOfStudy
Order By percentStudyMethod Desc

--Comparison of digital resouces use by students who come to the library to study vs all students

Select mostUsedDigitalResourceType,
	Count(*) as countMostUsedResourceForAll,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentMostUsedResouceForAll,
	Count(Case When primaryReasonForLibraryVisit = 'Studying' Then 1 Else NULL End) as countMostUsedResourceStudiers,
	Count(Case When primaryReasonForLibraryVisit = 'Studying' Then 1 Else Null End) * 
		100.0 / Sum(Count(Case When primaryReasonForLibraryVisit = 'Studying' Then 1 Else Null End)) Over() as percentMostUsedResourceStudiers
From PortfolioProject..LibrarySurvey
Group by mostUsedDigitalResourceType
Order by percentMostUsedResouceForAll Desc


----What time do students prefer to come to the library?

Select visitTimeOfDay,
	Count(*) as countOfVisitTimeOfDay,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentVisitTimeOfDay
From PortfolioProject..LibrarySurvey
Group by visitTimeOfDay
Order by percentVisitTimeOfDay Desc

--How often are students coming to the library?

Select libraryVisitFreq,
	Count(*) as countOfLibraryVisitFreq,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentLibraryVisitFreq
From PortfolioProject..LibrarySurvey
Group by libraryVisitFreq
Order by percentLibraryVisitFreq Desc


----Do the surveyed students live in rural or urban settings?

Select residenceType,
	Count(*) as countOfResidentType,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentResidentType
From PortfolioProject..LibrarySurvey
Group by residenceType
Order by percentResidentType Desc


----What types of materials do students prefer?

Select preferredReadingMaterial,
	Count(*) as countOfPreferredReadingMaterial,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentPreferredReadingMaterial
From PortfolioProject..LibrarySurvey
Group by preferredReadingMaterial
Order by percentPreferredReadingMaterial Desc


----Which languages do students prefer their materials be in?

Select preferredLanguage,
	Count(*) as countOfPreferredLanguage,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentPreferredLanguage
From PortfolioProject..LibrarySurvey
Group by preferredLanguage
Order by percentPreferredLanguage Desc


----How much enjoyment do surveyed students report they get out of reading?

Select readingEnjoymentLevel,
	Count(*) as countOfReadingEnjoymentLevel,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentReadingEnjoymentLevel
From PortfolioProject..LibrarySurvey
Group by readingEnjoymentLevel
Order by percentReadingEnjoymentLevel Desc

--Of the students who report the least amount of reading enjoyment, what are they coming to the library for?

Select primaryReasonForLibraryVisit,
	Count(*) as countOfReasonForVisit,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentReasonForVisit
From PortfolioProject..LibrarySurvey
Where readingEnjoymentLevel = 'Low'
Group by primaryReasonForLibraryVisit
Order by percentReasonForVisit Desc

--How do the visit reason trends for students who enjoy reading the least compare to all survey takers?

Select primaryReasonForLibraryVisit,
	Count(*) as countReasonForVisitForAll,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentReasonForVisitForAll,
	Count(Case When readingEnjoymentLevel = 'Low' Then 1 Else NULL End) as countReasonForVisitLowEnjoyment,
	Count(Case When readingEnjoymentLevel = 'Low' Then 1 Else Null End) * 
		100.0 / Sum(Count(Case When readingEnjoymentLevel = 'Low' Then 1 Else Null End)) Over() as percentReasonForVisitLowEnjoyment
From PortfolioProject..LibrarySurvey
Group by primaryReasonForLibraryVisit
Order by percentReasonForVisitForAll Desc


----How many students report that they are aware of the library's digital resources?

Select awareOfDigitalResouce,
	Count(*) as countOfAwareOfDigitalResource,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentAwareOfDigitalResource
From PortfolioProject..LibrarySurvey
Group by awareOfDigitalResouce
Order by percentAwareOfDigitalResource Desc

--Of those who are aware of the library's digital resources, how many students report that they use the resources?

Select usageOfDigitalResource,
	Count(*) as countOfUsageOfDigitalResource,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentUsageOfDigitalResource
From PortfolioProject..LibrarySurvey
Where awareOfDigitalResouce = 'Yes'
Group by usageOfDigitalResource
Order by percentUsageOfDigitalResource Desc

--Which digital resources do students report using the most?

Select mostUsedDigitalResourceType,
	Count(*) as countOfMostUsedDigitalResourceType,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentMostUsedDigitalResource
From PortfolioProject..LibrarySurvey
Where usageOfDigitalResource = 'Yes'
Group by mostUsedDigitalResourceType
Order by percentMostUsedDigitalResource Desc


----How many students report that they purchase books?

Select purchasesBooks,
	Count(*) as countPurchasesBooks,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentPurchasesBooks
From PortfolioProject..LibrarySurvey
Group by purchasesBooks
Order by percentPurchasesBooks Desc

--Of the students who report purchasing books, how much do they report spending on books annually?

Select annualBookExpenditure,
	Count(*) as countBookExpenditure,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentBookExpenditure
From PortfolioProject..LibrarySurvey
Where purchasesBooks = 'Yes'
Group by annualBookExpenditure
Order by percentBookExpenditure Desc

--Of the students who spend more than $100 on books annually, what type of materials do they prefer?

Select preferredReadingMaterial,
	Count(*) as countPreferredReadingMaterial,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentPreferredReadingMaterial
From PortfolioProject..LibrarySurvey
Group by preferredReadingMaterial
Order by percentPreferredReadingMaterial Desc

--Comparison of preferred reading materials for those who spend more than $100 on books annually vs all survey takers

Select preferredReadingMaterial,
	Count(*) as countPreferredMaterialForAll,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentPreferredMaterialForAll,
	Count(Case When annualBookExpenditure = 'Above $100' Then 1 Else NULL End) as countPreferredMaterialBigSpenders,
	Count(Case When annualBookExpenditure = 'Above $100' Then 1 Else Null End) * 
		100.0 / Sum(Count(Case When annualBookExpenditure = 'Above $100' Then 1 Else Null End)) Over() as percentPreferredMaterialBigSpenders
From PortfolioProject..LibrarySurvey
Group by preferredReadingMaterial
Order by percentPreferredMaterialForAll Desc
	
--Of the students who spend more than $100 on books annually, do they mostly live in rural or urban settings?

Select residenceType,
	Count(*) as countResidenceType,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentResidenceType
From PortfolioProject..LibrarySurvey
Where annualBookExpenditure = 'Above $100'
Group by residenceType
Order by percentResidenceType Desc

--Comparison of residential type for students who spend more than $100 on books annually vs all survey takers

Select residenceType,
	Count(*) as countResidenceTypeForAll,
	Count(*) * 100.0 / Sum(Count(*)) Over() as percentResidenceTypeForAll,
	Count(Case When annualBookExpenditure = 'Above $100' Then 1 Else NULL End) as countResidenceTypeBigSpenders,
	Count(Case When annualBookExpenditure = 'Above $100' Then 1 Else Null End) * 
		100.0 / Sum(Count(Case When annualBookExpenditure = 'Above $100' Then 1 Else Null End)) Over() as percentResidenceTypeBigSpenders
From PortfolioProject..LibrarySurvey
Group by residenceType
Order by percentResidenceTypeForAll Desc
