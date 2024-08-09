package com.entity.vo;

import com.entity.QingjiaEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 请假
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("qingjia")
public class QingjiaVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 员工
     */

    @TableField(value = "yuangong_id")
    private Integer yuangongId;


    /**
     * 请假编号
     */

    @TableField(value = "qingjia_uuid_number")
    private String qingjiaUuidNumber;


    /**
     * 请假标题
     */

    @TableField(value = "qingjia_name")
    private String qingjiaName;


    /**
     * 请假开始时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "qingjia_kaishi_time")
    private Date qingjiaKaishiTime;


    /**
     * 请假结束时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "qingjia_jieshu_time")
    private Date qingjiaJieshuTime;


    /**
     * 请假类型
     */

    @TableField(value = "qingjia_types")
    private Integer qingjiaTypes;


    /**
     * 请假详情
     */

    @TableField(value = "qingjia_content")
    private String qingjiaContent;


    /**
     * 审核状态
     */

    @TableField(value = "qingjia_yesno_types")
    private Integer qingjiaYesnoTypes;


    /**
     * 审核意见
     */

    @TableField(value = "qingjia_yesno_text")
    private String qingjiaYesnoText;


    /**
     * 审核时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "qingjia_shenhe_time")
    private Date qingjiaShenheTime;


    /**
     * 申请时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "insert_time")
    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
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
	 * 设置：请假编号
	 */
    public String getQingjiaUuidNumber() {
        return qingjiaUuidNumber;
    }


    /**
	 * 获取：请假编号
	 */

    public void setQingjiaUuidNumber(String qingjiaUuidNumber) {
        this.qingjiaUuidNumber = qingjiaUuidNumber;
    }
    /**
	 * 设置：请假标题
	 */
    public String getQingjiaName() {
        return qingjiaName;
    }


    /**
	 * 获取：请假标题
	 */

    public void setQingjiaName(String qingjiaName) {
        this.qingjiaName = qingjiaName;
    }
    /**
	 * 设置：请假开始时间
	 */
    public Date getQingjiaKaishiTime() {
        return qingjiaKaishiTime;
    }


    /**
	 * 获取：请假开始时间
	 */

    public void setQingjiaKaishiTime(Date qingjiaKaishiTime) {
        this.qingjiaKaishiTime = qingjiaKaishiTime;
    }
    /**
	 * 设置：请假结束时间
	 */
    public Date getQingjiaJieshuTime() {
        return qingjiaJieshuTime;
    }


    /**
	 * 获取：请假结束时间
	 */

    public void setQingjiaJieshuTime(Date qingjiaJieshuTime) {
        this.qingjiaJieshuTime = qingjiaJieshuTime;
    }
    /**
	 * 设置：请假类型
	 */
    public Integer getQingjiaTypes() {
        return qingjiaTypes;
    }


    /**
	 * 获取：请假类型
	 */

    public void setQingjiaTypes(Integer qingjiaTypes) {
        this.qingjiaTypes = qingjiaTypes;
    }
    /**
	 * 设置：请假详情
	 */
    public String getQingjiaContent() {
        return qingjiaContent;
    }


    /**
	 * 获取：请假详情
	 */

    public void setQingjiaContent(String qingjiaContent) {
        this.qingjiaContent = qingjiaContent;
    }
    /**
	 * 设置：审核状态
	 */
    public Integer getQingjiaYesnoTypes() {
        return qingjiaYesnoTypes;
    }


    /**
	 * 获取：审核状态
	 */

    public void setQingjiaYesnoTypes(Integer qingjiaYesnoTypes) {
        this.qingjiaYesnoTypes = qingjiaYesnoTypes;
    }
    /**
	 * 设置：审核意见
	 */
    public String getQingjiaYesnoText() {
        return qingjiaYesnoText;
    }


    /**
	 * 获取：审核意见
	 */

    public void setQingjiaYesnoText(String qingjiaYesnoText) {
        this.qingjiaYesnoText = qingjiaYesnoText;
    }
    /**
	 * 设置：审核时间
	 */
    public Date getQingjiaShenheTime() {
        return qingjiaShenheTime;
    }


    /**
	 * 获取：审核时间
	 */

    public void setQingjiaShenheTime(Date qingjiaShenheTime) {
        this.qingjiaShenheTime = qingjiaShenheTime;
    }
    /**
	 * 设置：申请时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 获取：申请时间
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

}
