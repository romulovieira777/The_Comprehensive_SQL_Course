ALTER TABLE
    TEST_TABLE
ADD
    (NEW1 NUMBER, NEW2 VARCHAR(50));


ALTER TABLE
    TEST_TABLE
RENAME COLUMN
    NEW1 TO NEW_ALTERED;


ALTER TABLE
    TEST_TABLE
DROP (
    NEW_ALTERED, NEW2
);