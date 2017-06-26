package party.wzlovewmx.model;

import java.io.Serializable;

import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="photo")
public class Photo implements Serializable {
    /**
     * 主键
     */
    @Id
    private Integer id;

    /**
     * 文件路径
     */
    private String filepath;
    
    /**
     * 文件名
     */
    private String filename;

    /**
     * 描述
     */
    private String description;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFilepath() {
        return filepath;
    }

    public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setFilepath(String filepath) {
        this.filepath = filepath;
    }

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
}