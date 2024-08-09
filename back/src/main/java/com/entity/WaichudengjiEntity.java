package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 外出登记
 *
 * @author 
 * @email
 */
@TableName("waichudengji")
public class WaichudengjiEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public WaichudengjiEntity() {

	}

	public WaichudengjiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")

    private Integer id;


    /**
     * 员工
     */
    @TableField(value = "yuangong_id")

    private Integer yuangongId;


    /**
     * 外出时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "waichu_time")

    private Date waichuTime;


    /**
     * 外出事由
     */
    @TableField(value = "waichudengji_shiyou")

    private String waichudengjiShiyou;


    /**
     * 外出类型
     */
    @TableField(value = "waichudengji_types")

    private Integer waichudengjiTypes;


    /**
     * 外出详情
     */
    @TableField(value = "waichudengji_content")

    private String waichudengjiContent;


    /**
     * 登记时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "insert_time",fill = FieldFill.INSERT)

    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "create_time",fill = FieldFill.INSERT)

    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }
    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：员工
	 */
    public Integer getYuangongId() {
        return yuangongId;
    }
    /**
	 * 获取：员工
	 */

    public void setYuangongId(Integer yuangongId) {
        this.yuangongId = yuangongId;
    }
    /**
	 * 设置：外出时间
	 */
    public Date getWaichuTime() {
        return waichuTime;
    }
    /**
	 * 获取：外出时间
	 */

    public void setWaichuTime(Date waichuTime) {
        this.waichuTime = waichuTime;
    }
    /**
	 * 设置：外出事由
	 */
    public String getWaichudengjiShiyou() {
        return waichudengjiShiyou;
    }
    /**
	 * 获取：外出事由
	 */

    public void setWaichudengjiShiyou(String waichudengjiShiyou) {
        this.waichudengjiShiyou = waichudengjiShiyou;
    }
    /**
	 * 设置：外出类型
	 */
    public Integer getWaichudengjiTypes() {
        return waichudengjiTypes;
    }
    /**
	 * 获取：外出类型
	 */

    public void setWaichudengjiTypes(Integer waichudengjiTypes) {
        this.waichudengjiTypes = waichudengjiTypes;
    }
    /**
	 * 设置：外出详情
	 */
    public String getWaichudengjiContent() {
        return waichudengjiContent;
    }
    /**
	 * 获取：外出详情
	 */

    public void setWaichudengjiContent(String waichudengjiContent) {
        this.waichudengjiContent = waichudengjiContent;
    }
    /**
	 * 设置：登记时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }
    /**
	 * 获取：登记时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }
    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Waichudengji{" +
            "id=" + id +
            ", yuangongId=" + yuangongId +
            ", waichuTime=" + waichuTime +
            ", waichudengjiShiyou=" + waichudengjiShiyou +
            ", waichudengjiTypes=" + waichudengjiTypes +
            ", waichudengjiContent=" + waichudengjiContent +
            ", insertTime=" + insertTime +
            ", createTime=" + createTime +
        "}";
    }
}
