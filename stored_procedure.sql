CREATE PROCEDURE PromoteStudents @Studies NVARCHAR(100), @Semester INT
AS
BEGIN
	DECLARE
	@OldEnrollmentId INT = (
		SELECT e.IdEnrollment FROM Enrollment e
		JOIN Studies s ON s.IdStudy = e.IdStudy
		WHERE s.Name = @Studies AND e.Semester = @Semester
	),
	@ReturnValue INT = 0

	IF(@OldEnrollmentId IS NULL)
	BEGIN
		RETURN @ReturnValue;
	END

	DECLARE
	@NewEnrollmentId INT = (
		SELECT e.IdEnrollment FROM Enrollment e
		JOIN Studies s ON s.IdStudy = e.IdStudy
		WHERE s.Name = @Studies AND e.Semester = @Semester + 1
	),
	@IdStudy INT = (
		SELECT IdStudy FROM Studies WHERE Name = @Studies
	)

	IF(@NewEnrollmentId IS NULL)
	BEGIN
		SELECT @NewEnrollmentId = MAX(IdEnrollment) + 1 FROM Enrollment;

		INSERT INTO Enrollment (IdEnrollment, Semester, IdStudy, StartDate)
		VALUES (@NewEnrollmentId, @Semester + 1, @IdStudy, '2020/10/01');
	END

	UPDATE Student SET IdEnrollment = @NewEnrollmentId WHERE IdEnrollment = @OldEnrollmentId
	SET @ReturnValue = @NewEnrollmentId

	RETURN @ReturnValue;
END;