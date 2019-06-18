package com.sn.app.domain;

import java.util.Collection;

import org.springframework.data.repository.CrudRepository;

public interface TaskRepository extends CrudRepository<Task, Long> {

	Collection<Task> findByUser(String user);
}
