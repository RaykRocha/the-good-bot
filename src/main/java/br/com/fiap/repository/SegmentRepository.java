package br.com.fiap.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import br.com.fiap.model.SegmentModel;

@Repository
public interface SegmentRepository extends JpaRepository<SegmentModel, Long> {

}
