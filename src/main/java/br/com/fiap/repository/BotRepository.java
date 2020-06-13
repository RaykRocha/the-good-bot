package br.com.fiap.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import br.com.fiap.model.BotModel;

public interface BotRepository extends JpaRepository<BotModel, Long> {

}
