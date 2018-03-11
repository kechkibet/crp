package com.oldigital.crp.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.global.DesignSupport;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Version;
import com.haulmont.cuba.core.entity.BaseIntIdentityIdEntity;
import com.haulmont.cuba.core.entity.Versioned;
import com.haulmont.cuba.core.entity.Updatable;
import com.haulmont.cuba.core.entity.Creatable;
import com.oldigital.crp.entity.enums.Status;

@DesignSupport("{'imported':true}")
@NamePattern("%s|revenueName")
@Table(name = "revenuestreams")
@Entity(name = "crp$Revenuestreams")
public class Revenuestreams extends BaseIntIdentityIdEntity implements Versioned, Updatable, Creatable {
    private static final long serialVersionUID = -5954394042058788335L;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category")
    protected Revenuecategory category;

    @Column(name = "`revenueCode`")
    protected Integer revenueCode;

    @Column(name = "`revenueName`")
    protected String revenueName;

    @Column(name = "price")
    protected String price;

    @Column(name = "status")
    protected Integer status;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "`defaultDebitAC`")
    protected Chartofaccounts defaultDebitAC;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "`defaultCreditAC`")
    protected Chartofaccounts defaultCreditAC;

    @Column(name = "`revenuceCode`")
    protected Integer revenuceCode;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "department")
    protected Departments department;

    @Column(name = "CREATE_TS")
    protected Date createTs;

    @Column(name = "CREATED_BY", length = 50)
    protected String createdBy;

    @Column(name = "UPDATE_TS")
    protected Date updateTs;

    @Column(name = "UPDATED_BY", length = 50)
    protected String updatedBy;

    @Version
    @Column(name = "VERSION")
    protected Integer version;

    public Status getStatus() {
        return status == null ? null : Status.fromId(status);
    }

    public void setStatus(Status status) {
        this.status = status == null ? null : status.getId();
    }


    public void setCategory(Revenuecategory category) {
        this.category = category;
    }

    public Revenuecategory getCategory() {
        return category;
    }

    public void setRevenueCode(Integer revenueCode) {
        this.revenueCode = revenueCode;
    }

    public Integer getRevenueCode() {
        return revenueCode;
    }

    public void setRevenueName(String revenueName) {
        this.revenueName = revenueName;
    }

    public String getRevenueName() {
        return revenueName;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPrice() {
        return price;
    }

    public void setDefaultDebitAC(Chartofaccounts defaultDebitAC) {
        this.defaultDebitAC = defaultDebitAC;
    }

    public Chartofaccounts getDefaultDebitAC() {
        return defaultDebitAC;
    }

    public void setDefaultCreditAC(Chartofaccounts defaultCreditAC) {
        this.defaultCreditAC = defaultCreditAC;
    }

    public Chartofaccounts getDefaultCreditAC() {
        return defaultCreditAC;
    }

    public void setRevenuceCode(Integer revenuceCode) {
        this.revenuceCode = revenuceCode;
    }

    public Integer getRevenuceCode() {
        return revenuceCode;
    }

    public void setDepartment(Departments department) {
        this.department = department;
    }

    public Departments getDepartment() {
        return department;
    }

    @Override
    public void setCreateTs(Date createTs) {
        this.createTs = createTs;
    }

    @Override
    public Date getCreateTs() {
        return createTs;
    }

    @Override
    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    @Override
    public String getCreatedBy() {
        return createdBy;
    }

    @Override
    public void setUpdateTs(Date updateTs) {
        this.updateTs = updateTs;
    }

    @Override
    public Date getUpdateTs() {
        return updateTs;
    }

    @Override
    public void setUpdatedBy(String updatedBy) {
        this.updatedBy = updatedBy;
    }

    @Override
    public String getUpdatedBy() {
        return updatedBy;
    }

    @Override
    public void setVersion(Integer version) {
        this.version = version;
    }

    @Override
    public Integer getVersion() {
        return version;
    }


}