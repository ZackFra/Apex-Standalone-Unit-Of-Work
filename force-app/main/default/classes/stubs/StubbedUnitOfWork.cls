/**
 * @description Stubbed unit of work for unit testing 
 * @author Zackary Frazier
 * @since 12/13/2024
 */
@IsTest
public with sharing class StubbedUnitOfWork extends UnitOfWork implements IUnitOfWork {


    /**
     * @description Designates that a call to commitWork should throw a DmlException
     */
    public void shouldFail() {
        StubbedUnitOfWorkDML dml = (StubbedUnitOfWorkDML) this.dml;
        dml.shouldFail();
    }

    /**
     * @description Constructor for stubbed unit of work
     */
    public StubbedUnitOfWork() {
        super(true, AccessLevel.USER_MODE, new StubbedUnitOfWorkDML());
    }
}