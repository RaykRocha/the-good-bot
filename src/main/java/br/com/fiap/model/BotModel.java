package br.com.fiap.model;

import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

@Entity
@Table(name = "TB_BOT")
public class BotModel {

	private long id_bot;
	private String name;
	private String welcome_msg;
	private String farewell_msg;
	private int downtime;
	private String default_answer;
	private List<SegmentModel> segment;

	public BotModel() {
	}

	public BotModel(long id_bot, String name, String welcome_msg, String farewell_msg, int downtime,
			String default_answer) {
		super();
		this.id_bot = id_bot;
		this.name = name;
		this.welcome_msg = welcome_msg;
		this.farewell_msg = farewell_msg;
		this.downtime = downtime;
		this.default_answer = default_answer;
	}

	@Id
	@Column(name = "ID_BOT")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "BOT_SEQ")
	@SequenceGenerator(name = "BOT_SEQ", initialValue = 1, allocationSize = 1)
	public long getId_bot() {
		return id_bot;
	}

	public void setId_bot(long id_bot) {
		this.id_bot = id_bot;
	}

	@Column(name = "NAME")
	@Size(min = 2, max = 20, message = "Nome deve ter no mínimo 2 e no máximo 20 caracteres")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "WELCOME_MSG")
	@Size(min = 1, max = 200, message = "Mensagem de boas vindas deve ter no mínimo 1 e no máximo 200 caracteres")
	public String getWelcome_msg() {
		return welcome_msg;
	}

	public void setWelcome_msg(String welcome_msg) {
		this.welcome_msg = welcome_msg;
	}

	@Column(name = "FAREWELL_MSG")
	@Size(min = 1, max = 200, message = "Mensagem de despedida deve ter no mínimo 1 e no máximo 200 caracteres")
	public String getFarewell_msg() {
		return farewell_msg;
	}

	public void setFarewell_msg(String farewell_msg) {
		this.farewell_msg = farewell_msg;
	}

	@Column(name = "DOWNTIME")
	@Min(value = 1, message = "Tempo de inatividade deve ser acima de 0")
	public int getDowntime() {
		return downtime;
	}

	public void setDowntime(int downtime) {
		this.downtime = downtime;
	}

	@Column(name = "DEFAULT_ANSWER")
	@Size(min = 1, max = 200, message = "Resposta default deve ter no mínimo 1 e no máximo 200 caracteres")
	public String getDefault_answer() {
		return default_answer;
	}

	public void setDefault_answer(String default_answer) {
		this.default_answer = default_answer;
	}

	@OneToMany(cascade = CascadeType.REMOVE, orphanRemoval = true, mappedBy = "bot")
	public List<SegmentModel> getSegment() {
		return segment;
	}

	public void setSegment(List<SegmentModel> segment) {
		if (segment == null) {
			this.segment.clear();
		} else {
			this.segment = segment;
		}

	}
}
