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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Version;
import com.haulmont.cuba.core.entity.BaseIntIdentityIdEntity;
import com.haulmont.cuba.core.entity.Versioned;
import com.haulmont.cuba.core.entity.SoftDelete;
import com.haulmont.cuba.core.entity.Updatable;
import com.haulmont.cuba.core.entity.Creatable;
import com.oldigital.crp.entity.enums.Status;
import com.haulmont.cuba.core.entity.FileDescriptor;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;

@DesignSupport("{'imported':true}")
@NamePattern("%s|lrNumber")
@Table(name = "propertyregister")
@Entity(name = "crp$Propertyregister")
public class Propertyregister extends BaseIntIdentityIdEntity implements Versioned, SoftDelete, Updatable, Creatable {
    private static final long serialVersionUID = 7134924700491702673L;

    @Column(name = "`lrNumber`")
    protected String lrNumber;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "`ratePayer`")
    protected Persons ratePayer;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "`valuationRoll`")
    protected Valuationrolls valuationRoll;

    @Column(name = "status")
    protected Integer status;

    @Column(name = "`physicalLocation`")
    protected String physicalLocation;

    @Column(name = "`gpsLongitude`")
    protected String gpsLongitude;

    @Column(name = "`gpsLatitude`")
    protected String gpsLatitude;

    @Column(name = "`gpsAltitude`")
    protected String gpsAltitude;

    @OnDelete(DeletePolicy.CASCADE)
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "`uploadStampDuty`")
    protected FileDescriptor uploadStampDuty;

    @Column(name = "`sellingValue`")
    protected Integer sellingValue;

    @OnDelete(DeletePolicy.CASCADE)
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "`uploadTitleDeed`")
    protected FileDescriptor uploadTitleDeed;

    @Column(name = "`sizeInHa`")
    protected Integer sizeInHa;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "`subCounty`")
    protected Subcounties subCounty;

    @Column(name = "interest")
    protected String interest;

    @Column(name = "`leaseExpiry`")
    protected Integer leaseExpiry;

    @Temporal(TemporalType.DATE)
    @Column(name = "`leaseStartDate`")
    protected Date leaseStartDate;

    @Column(name = "CREATE_TS")
    protected Date createTs;

    @Column(name = "CREATED_BY", length = 50)
    protected String createdBy;

    @Column(name = "DELETE_TS")
    protected Date deleteTs;

    @Column(name = "DELETED_BY", length = 50)
    protected String deletedBy;

    @Column(name = "UPDATE_TS")
    protected Date updateTs;

    @Column(name = "UPDATED_BY", length = 50)
    protected String updatedBy;

    @Version
    @Column(name = "VERSION")
    protected Integer version;

    public FileDescriptor getUploadStampDuty() {
        return uploadStampDuty;
    }

    public void setUploadStampDuty(FileDescriptor uploadStampDuty) {
        this.uploadStampDuty = uploadStampDuty;
    }


    public FileDescriptor getUploadTitleDeed() {
        return uploadTitleDeed;
    }

    public void setUploadTitleDeed(FileDescriptor uploadTitleDeed) {
        this.uploadTitleDeed = uploadTitleDeed;
    }



    public Status getStatus() {
        return status == null ? null : Status.fromId(status);
    }

    public void setStatus(Status status) {
        this.status = status == null ? null : status.getId();
    }


    @Override
    public Boolean isDeleted() {
        return deleteTs != null;
    }


    public void setLrNumber(String lrNumber) {
        this.lrNumber = lrNumber;
    }

    public String getLrNumber() {
        return lrNumber;
    }

    public void setRatePayer(Persons ratePayer) {
        this.ratePayer = ratePayer;
    }

    public Persons getRatePayer() {
        return ratePayer;
    }

    public void setValuationRoll(Valuationrolls valuationRoll) {
        this.valuationRoll = valuationRoll;
    }

    public Valuationrolls getValuationRoll() {
        return valuationRoll;
    }

    public void setPhysicalLocation(String physicalLocation) {
        this.physicalLocation = physicalLocation;
    }

    public String getPhysicalLocation() {
        return physicalLocation;
    }

    public void setGpsLongitude(String gpsLongitude) {
        this.gpsLongitude = gpsLongitude;
    }

    public String getGpsLongitude() {
        return gpsLongitude;
    }

    public void setGpsLatitude(String gpsLatitude) {
        this.gpsLatitude = gpsLatitude;
    }

    public String getGpsLatitude() {
        return gpsLatitude;
    }

    public void setGpsAltitude(String gpsAltitude) {
        this.gpsAltitude = gpsAltitude;
    }

    public String getGpsAltitude() {
        return gpsAltitude;
    }

    public void setSellingValue(Integer sellingValue) {
        this.sellingValue = sellingValue;
    }

    public Integer getSellingValue() {
        return sellingValue;
    }

    public void setSizeInHa(Integer sizeInHa) {
        this.sizeInHa = sizeInHa;
    }

    public Integer getSizeInHa() {
        return sizeInHa;
    }

    public void setSubCounty(Subcounties subCounty) {
        this.subCounty = subCounty;
    }

    public Subcounties getSubCounty() {
        return subCounty;
    }

    public void setInterest(String interest) {
        this.interest = interest;
    }

    public String getInterest() {
        return interest;
    }

    public void setLeaseExpiry(Integer leaseExpiry) {
        this.leaseExpiry = leaseExpiry;
    }

    public Integer getLeaseExpiry() {
        return leaseExpiry;
    }

    public void setLeaseStartDate(Date leaseStartDate) {
        this.leaseStartDate = leaseStartDate;
    }

    public Date getLeaseStartDate() {
        return leaseStartDate;
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
    public void setDeleteTs(Date deleteTs) {
        this.deleteTs = deleteTs;
    }

    @Override
    public Date getDeleteTs() {
        return deleteTs;
    }

    @Override
    public void setDeletedBy(String deletedBy) {
        this.deletedBy = deletedBy;
    }

    @Override
    public String getDeletedBy() {
        return deletedBy;
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