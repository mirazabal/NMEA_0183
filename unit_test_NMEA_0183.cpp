
#include "include/gtest/gtest.h"


namespace
{
	class NMEA_0183_TEST : public ::testing::Test 
	{
		protected:
		virtual ~NMEA_0183_TEST(){};
	
	};
	

	TEST_F(NMEA_0183_TEST, test)
	{
		EXPECT_TRUE(2==2);
	}


}// end of namespace


int main(int argc, char **argv)
{	
	::testing::InitGoogleTest(&argc,argv);
	return RUN_ALL_TESTS();
};
