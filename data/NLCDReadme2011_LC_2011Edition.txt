National Land Cover Database (NLCD) Tiled Data Distribution SYstem (TDDS) Zipfile Content Readme

Table of Contents


INTRODUCTION
Process Description
Part 1: Data Specification
PART 2: TILED DATA DISTRIBUTION SYSTEM (TDDS) - ORTHOIMAGERY INFORMATION
Part 3: FILE NAMING CONVENTION
PART 4: CONTENTS OF ZIPFILE
PART 5: DISTRIBUTION INFORMATION
Part 6: Resource Information

Introduction
The National Land Cover Database products are created through a cooperative project conducted by the Multi-Resolution Land Characteristics (MRLC) Consortium.  The MRLC Consortium is a partnership of federal agencies (www.mrlc.gov), consisting of the U.S. Geological Survey (USGS), the National Oceanic and Atmospheric Administration (NOAA), the U.S. Environmental Protection Agency (EPA), the U.S. Department of Agriculture (USDA), the U.S. Forest Service (USFS), the National Park Service (NPS), the U.S. Fish and Wildlife Service (FWS), the Bureau of Land Management (BLM) and the USDA Natural Resources Conservation Service (NRCS).  The success of NLCD over nearly two decades is credited to the continuing collaborative spirit of the agencies that make up the MRLC.  NLCD 2011 is the most up-to-date iteration of the National Land Cover Database, the definitive Landsat-based, 30-meter resolution land cover database for the Nation.  The data in NLCD 2011 are completely integrated with NLCD 2001 (2011 Edition) and NLCD 2006 (2011 Edition).  For NLCD 2011, there are 5 primary data products:  1) NLCD 2011 Land Cover; 2) NLCD 2006/2011 Land Cover Change Pixels labeled with the 2011 land cover class; 3) NLCD 2011 Percent Developed Imperviousness; 4) NLCD 2006/2011 Percent Developed Imperviousness Change Pixels; and 5) NLCD 2011 Tree Canopy Cover provided by an MRLC partner - the U.S.D.A. Forest Service Remote Sensing Applications Center.  In addition, ancillary metadata includes the NLCD 2011 Path/Row Index vector file showing the footprint of Landsat scenes and change analysis pairs used to derive 2006/2011 spectral change.  All Landsat scene acquisition dates are included in the attribute table.  Also, as part of the NLCD 2011 project, NLCD 2001 and 2006 land cover and impervious data products have been revised and reissued (2011 Edition) to provide full compatibility with the new NLCD 2011 products.  NLCD Tree Canopy Cover was created using MRLC mapping zones from NLCD 2001 (see Tree Canopy Cover metadata for additional detail).  All other NLCD 2011 products were created on a path/row basis and mosaicked to create a seamless national product.  Questions about the NLCD 2011 land cover product can be directed to the NLCD 2011 land cover mapping team at the USGS/EROS, Sioux Falls, SD (605) 594-6151 or mrlc@usgs.gov.



Process Description
   Landsat image selection and preprocessing. For NLCD 2011 change analysis, two, two-date pairs of Landsat scenes were selected for each path/row to represent ground conditions in circa 2006 and 2011.  One additional circa 2011 scene was selected to enhance modeling results for land cover labeling. In selecting the 5 scenes, the temporal range of the imagery was restricted to reduce the impact of seasonal and phenological variation.  A pre-processing step was performed to convert the digital number to top of atmosphere reflectance using procedures similar to those established for the NLCD 2001 mapping effort (Homer et al., 2004).  Reflectance derivatives, including a tasseled-cap transformation and a 3-ratio index, were generated for each scene to use in the modeling process as independent variables.  Where present, clouds and cloud shadows were digitized and masked.

          NLCD 2011 Percent Developed Imperviousness and Percent Developed Imperviousness Change Analysis.  Because the four NLCD developed classes are derived from a percent imperviousness mapping product, an overview of steps required to update the NLCD 2001 imperviousness to reflect urban growth captured in 2006 era Landsat imagery is provided here (Xian et al., 2010).  These same procedures were employed to produce NLCD 2011 Percent Developed Imperviousness and 2006-2011 Percent Developed Imperviousness Change.  First, 2009 nighttime lights imagery from the NOAA Defense Meteorological Satellite Program (DMSP) was imposed on the NLCD 2006 impervious surface product to exclude low density imperviousness outside urban and suburban centers so that only imperviousness in urban core areas would be used in the training dataset. Two training datasets, one having a relatively larger urban extent and one having a smaller extent, were produced through imposing two different thresholds on city light imagery. Second, each of the two training datasets combined with 2006 Landsat imagery was separately applied using a regression tree (RT) algorithm to build up RT models. Two sets of RT models were then used to estimate percent imperviousness and to produce two 2006 synthetic impervious surfaces. Similarly, the same two training datasets were used with 2011 Landsat imagery to create two sets of RT models that produce two 2011 synthetic impervious surfaces. Third, the 2006 and 2011 synthetic impervious surface pairs were compared using both 2006 impervious surface products to retain 2006 impervious surface area (ISA) in the unchanged areas. The 2009 DMSP nighttime lights imagery was then employed to ensure that non-imperviousness areas were not included and that new impervious surfaces emerged in the city light extent. After this step, two 2011 intermediate impervious surfaces were produced. Finally, the two intermediate products and 2006 imperviousness were compared to remove false estimates in non-urban areas and generate a 2011 impervious surface estimate.  Imperviousness threshold values used to derive the NLCD developed classes are: (Class 21) developed open space (imperviousness < 20%), (Class 22) low-intensity developed (imperviousness from 20 - 49%), (Class 23) medium intensity developed (imperviousness from 50 -79%), and (Class 24) high-intensity developed (imperviousness > 79%).
          To improve NLCD imperviousness the 2011 project included a process to reduce omission and commission error in NLCD 2001, 2006, and 2011 products.  This activity was completed for urban areas in most of the eastern ½ of the conterminous United States.  High resolution (one-meter ground sample distance) National Aerial Imagery Program (NAIP - http//fsa.usda.gov/FSA/) imagery was used to verify imperviousness.  Using hand-edits imperviousness was removed from areas incorrectly identified as developed and added to areas where developed land cover was missed.  A modeling process was implemented to add missed imperviousness changes to the correct era and to fill areas where developed was removed with an appropriate non-developed land cover class.  These improvements were incorporated with the derived developed classes in all areas of imperviousness and land cover versions released with NLCD 2011 editions.  Revised products, NLCD 2001 and NLCD 2006 Impervious (2011 Editions) and NLCD 2001-2006 Impervious Change Pixels (2011 Edition) are included as part of the NLCD 2011 product release.

          Land Cover Change Analysis.  For the NLCD 2011 Land Cover Update, a variation of the Multi-Index Integrated Change Analysis (MIICA) used in NLCD 2006 spectral change analysis was refined to capture land cover disturbance and potential land cover change patterns for updating the National Land Cover Database 2011 (Jin et al. 2013). Four indices were integrated into one model to more accurately detect true spectral changes between two time periods.  Within the model, normalized burn ratio (NBR), change vector (CV, Xian et al., 2009), relative change vector (RCV), and normalized difference vegetation index (NDVI) are calculated separately for the early date (circa 2006) and late date (circa 2011) scenes.  The four pairs of indices for the two dates are differenced and then evaluated in a final model conditional statement that categorizes each pixel as either biomass increase, biomass decrease, or no change.  For NLCD 2011, two image pairs of circa 2006 and circa 2011, ideally one leaf-on pair and one leaf-off pair are used interactively in each path/row.  The integrated change result is clumped and sieved to produce a refined change/no-change mask used to identify potential change pixels that are then labeled with the NLCD 2011 class.

          NLCD 2011 Land Cover Classification.  Land cover mapping protocols used during NLCD 2011 processing are similar to those used to label the NLCD 2001 product (Homer et al., 2004), but applied on a path/row basis instead of multiple path/row MRLC zones (Xian et al., 2009).  Classification was achieved using decision tree modeling that employed a combination of Landsat imagery, reflectance derivatives, and ancillary data (independent variables) with training data points (dependent variable) collected from a refined version of the NLCD 2006 land cover product.  Training points were randomly sampled and limited to those areas that were determined to be unchanged between 2006 and 2011 during the MIICA spectral change analysis process.  Training data for pixels changed to developed land cover were not collected since the four classes in urban and sub-urban areas were mapped separately using a regression tree modeling method (described in the Imperviousness Change Analysis process steps above).  Post classification modeling and hand-editing were used to further refine the decision tree output.  Following classification, the 2011 land cover was masked with the change/no-change result (captured during the MIICA change analysis modeling) to extract a label for spectrally changed pixels.  Labeled change pixels were then compared to the NLCD 2006 land cover base to exclude those pixels identified as spectral change, but classified with the same label as the corresponding 2006 pixel.  NLCD 2011 percent developed impervious pixels, identified as changed, were extracted to NLCD developed class codes using NLCD 2011 legend thresholds for developed classes and added to the change pixel map.  This intermediate change pixel product was generalized using the NLCD Smart Eliminate tool with the following minimum mapping units (mmu) applied:  1 acre (approximately 5 ETM+ 30 m  pixel patch) for developed classes (class codes 21, 22, 23, and 24); 7.12 acres (approximately 32 ETM+ pixel patch) for agricultural classes (class codes 81 and 82); and 2.67 acres (approximately 12 ETM+ pixel patch) for all other classes (class codes 11, 12, 31, 41, 42, 43, 52, 71, 90, and 95).  The smart eliminate aggregation program subsumes pixels from the single pixel level to the mmu pixel patch using a queens algorithm at doubling intervals. The algorithm consults a weighting matrix to guide merging of cover types by similarity, resulting in a product that preserves land cover logic as much as possible.  During the NLCD 2011 analysis and modeling process, inconsistencies in the NLCD 2001 and 2006 land cover products were corrected with the revised products, NLCD 2001 and NLCD 2006 Land Cover (2011 Editions), included as part of the NLCD 2011 product release.

          NLCD 2011 Land Cover (Final Product).  Additional processing steps were implemented to create the final NLCD 2011 land cover map.  Individual path/row change pixel results were assembled to form an intermediate seamless national product.  This seamless change pixel map was reviewed and edited to remove regional inconsistencies.  Refined NLCD 2011 change pixels were then combined with the re-issued NLCD 2006 Land Cover Version (2011 Edition), and the resulting image was smart-eliminated to a 5-pixel mmu.  This final step eliminated single pixels and patches less than 5 pixels in extent that appeared as a result of combining the separate images.

          NLCD 2011 Change Pixels (Final Product).  A comparison of the NLCD 2006 (2011 Edition) base and the NLCD 2011 Land Cover was necessary to extract a final version of the NLCD 2011 Change Pixels.  In a model, pixels that were labeled with the same land cover class code were removed and only those pixels that did not agree in the two classifications were retained as final NLCD 2011 Change Pixels.

          NLCD 2006/2011 Percent Developed Imperviousness Change.  The NLCD 2006 Percent Developed Imperviousness (2011 Edition)and the NLCD 2011 Percent Developed Imperviousness were compared in a model to provide the user community with a layer that depicts imperviousness change between 2006 and 2011.

          Landsat data and ancillary data used for the land cover prediction -

          For a list of Landsat scene dates by path/row used in this project, please see:  appendix3_nlcd2011_scene_list_by_path_row.txt

          Data Type of DEM composed of 1 band of Continuous Variable Type.

          Data Type of Slope composed of 1 band of Continuous Variable Type.

          Data Type of Aspect composed of 1 band of Categorical Variable Type.

          Data type of Position Index composed of 1 band of Continuous Variable Type.

          Data type of 3-ratio index composed of 3 bands of Continuous Variable Type.


PART 1: Data Specifications and Products


	Resolution:      	one Arc Second (~30 meter)
  	Data type:      	GeoTIFF
  	Projection:  		Albers Conical Equal Area
  	Datum:       		NAD83
  	

	NLCD 2011 - Landcover  - 2011 Edition includes data for Conterminous U.S..  
	

PART 2: TILED DATA DISTRIBUTION SYSTEM (TDDS) - NLCD INFORMATION

Tiled Data Distribution System (TDDS) is a means to access pre-packaged data.  Each 2001 NLCD product are cut to 3 x 3 degree tiles and zipped for online download.  The zip bundles contain the product image and associated files, an overall coverage shapefile, metadata, color table file, appendix of scene listings, and readme.  The data is available for download thru The National Map viewer and MRLC viewer.  (http://viewer.nationalmap.gov/viewer/ and http://gisdata.usgs.gov/website/mrlc/viewer.htm)

Part 3: FILE NAMING CONVENTION

Each tile is cut to a 3 x 3 degree area.  The naming convention for each tile is the NLCD product and lower right corner coordinate. 


The file naming convention is:
	
        NLCDFFFF_NNN_aaaaaa

		NLCD      =  National Land Cover Database
		FFFF      =  Project Year (2011)
                NNN       =  Product type (LC = Landcover, IMP = Imperviousness
		aaaaaa    =  Lower right corner coordinate (N24W078) 		


  	Example: NLCD2011_LC_N24W078.zip 

			NLCD     =  National Land Cover Database
	 		2011     =  Project year 2011
		      	LC       =  Landcover product
                        N24W078  =  Tile extent starts at the lower right corner coodinate of N 					24 and W 78. The data covers an area within N 24, N 27, 
					W 78, W 81  
                        			           

PART 4: CONTENTS OF ZIPFILE

	
	.tif  	 =  Geotiff image
	.tfw	 =  World file for full resolution Geotiff image
	.aux.xm l=  diplay info
	.prj	 =  Projection File
	.jpg	 =  Lossy compressed image
	.jpw     =  World file for lossy compressed image
	.xml     =  FGDC Metadata file 
	.htm     =  HTML format FGDC metadata file suitable for reading and printing
	.vat.dbf =  Color table information
	Shapefile
	 (.dbf, .prj, .sbn, .sbx, .shp, .shx)
		=  The shapefile (consisting of 6 files) represents the overall 3 x 3 degree GRID 
	NLCDReadme2011_LC_2011Edition.txt 
		=  The readme text file
	Appendix
		=  List of Landsat scenes and scene dates by path/row used in this project


PART 5: DISTRIBUTION INFORMATION

	Access points (i.e. map interface) can be found at:
		
		http://viewer.nationalmap.gov/viewer/ and http://gisdata.usgs.gov/website/mrlc/viewer.htm
	
	To acquire entire datasets via Bulk Data Distribution, they can be found at:
	
		http://www.mrlc.gov/


Part 6: Resource Information

Information concerning the Multi-Resolution Land Characteristics Consortium  (MRLC), data info, and refernces can be found at:
	
		http://www.mrlc.gov/



Disclaimer:  Any use of trade, product, or firm names is for descriptive 
purposes only and does not imply endorsement by the U. S. Government.    


Readme Publication Date:  May 2014


