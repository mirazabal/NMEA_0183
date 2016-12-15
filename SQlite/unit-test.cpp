#include <stdio.h>
#include <sqlite3.h>
#include "../include/gtest/gtest.h"

namespace
{
	static int callback(void *NotUsed, int argc, char **argv, char **azColName){
		int i;
		for(i=0; i<argc; i++){
			  printf("%s = %s\n", azColName[i], argv[i] ? argv[i] : "NULL");
			}
		printf("\n");
		return 0;
	}
	
	class SQLite_TEST : public ::testing::Test 
	{
		protected:
		virtual ~SQLite_TEST(){};
		
		virtual void SetUp(){
		
		}

		virtual void TearDown(){
			sqlite3_close(db);
		}

		sqlite3 *db_;
		char *zErrMsg_;
		int rc_;
		char *databaseName_ = "test.db";  

		char* sqlTable = "CREATE TABLE NMEA_COMMANDS("  \
	   			"ID INT PRIMARY KEY AUTOINCREMENT NOT NULL," \
				"COMMAND_TYPE  TEXT    NOT NULL," \
				"AGE           TEXT     NOT NULL," \
				"ADDRESS        CHAR(50)," \
				"sqltime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL);";

	};
	
	TEST_F(SQLite_TEST, sqlite_open)
	{
		rc_ = sqlite3_open( databaseName_, &db_); 
		ASSERT_TRUE( rc_ == 0 );
	}

	TEST_F(SQLite_TEST, sqlite_create_table )
	{
		rc_ = sqlite3_exec(db_, sqlTable_, callback, 0, &zErrMsg_);
		ASSERT_EQ(SQLITE_OK, rc );
	}

	TEST_F(SQLite_TEST, sqlite_insert_data)
	{

		char* sql2 = "INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) "  \
			"VALUES (1, 'Paul', 32, 'California', 20000.00 ); " \
			"INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) "  \
			 "VALUES (2, 'Allen', 25, 'Texas', 15000.00 ); "     \
			"INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY)" \
			"VALUES (3, 'Teddy', 23, 'Norway', 20000.00 );" \
			"INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY)" \
			"VALUES (4, 'Mark', 25, 'Rich-Mond ', 65000.00 );";


		rc_ = sqlite3_exec(db_, sql2, callback, 0, &zErrMsg_);
		ASSERT_EQ(SQLITE_OK, rc );
	}

}// end of namespace



int main(int argc, char **argv)
{
	::testing::InitGoogleTest(&argc,argv);
	auto retVal = RUN_ALL_TESTS();
	return 0;
};

