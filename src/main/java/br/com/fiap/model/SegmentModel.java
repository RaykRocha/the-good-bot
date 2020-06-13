package br.com.fiap.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.Table;

@Entity
@Table(name = "TB_SEGMENT")
public class SegmentModel {

	private long id_segment;
	private String nameSegment;
	private BotModel bot;

	public SegmentModel() {
	}

	public SegmentModel(long id_segment, String nameSegment, BotModel bot) {
		super();
		this.id_segment = id_segment;
		this.nameSegment = nameSegment;
		this.bot = bot;
	}

	@Id
	@Column(name = "ID_SEGMENT")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEGMENT_SEQ")
	@SequenceGenerator(name = "SEGMENT_SEQ", initialValue = 1, allocationSize = 1)
	public long getId_segment() {
		return id_segment;
	}

	public void setId_segment(long id_segment) {
		this.id_segment = id_segment;
	}

	@Column(name = "NAME_SEGMENT")
	@NotNull(message = "Nome obrigatório")
	@Size(min = 2, max = 20, message = "Nome deve ter entre 2 e 20 caracteres")
	public String getnameSegment() {
		return nameSegment;
	}

	public void setnameSegment(String nameSegment) {
		this.nameSegment = nameSegment;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "TB_BOT", nullable = true)
	public BotModel getBot() {
		return bot;
	}

	public void setBot(BotModel bot) {
		this.bot = bot;
	}

}
