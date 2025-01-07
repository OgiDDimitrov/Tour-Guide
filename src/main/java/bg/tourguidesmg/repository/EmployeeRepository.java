package bg.tourguidesmg.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import bg.tourguidesmg.model.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long>{

}
