package entity;
// Generated Aug 1, 2020 2:29:25 PM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Banners generated by hbm2java
 */
@Entity
@Table(name = "Banners")
public class Banners implements java.io.Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Column(name = "BannerId")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int bannerId;
    @Column(name = "BannerPiority")
    private int bannerPiority;
    @Column(name = "BannerImage")
    private String bannerImage;
    @Column(name = "BannerDescription")
    private String bannerDescription;
    @Column(name = "BannerStatus")
    private int bannerStatus;

    public Banners() {
    }

    public Banners(int bannerId, int bannerPiority, String bannerImage, String bannerDescription, int bannerStatus) {
        this.bannerId = bannerId;
        this.bannerPiority = bannerPiority;
        this.bannerImage = bannerImage;
        this.bannerDescription = bannerDescription;
        this.bannerStatus = bannerStatus;
    }

    public int getBannerId() {
        return this.bannerId;
    }

    public void setBannerId(int bannerId) {
        this.bannerId = bannerId;
    }

    public int getBannerPiority() {
        return this.bannerPiority;
    }

    public void setBannerPiority(int bannerPiority) {
        this.bannerPiority = bannerPiority;
    }

    public String getBannerImage() {
        return this.bannerImage;
    }

    public void setBannerImage(String bannerImage) {
        this.bannerImage = bannerImage;
    }

    public String getBannerDescription() {
        return this.bannerDescription;
    }

    public void setBannerDescription(String bannerDescription) {
        this.bannerDescription = bannerDescription;
    }

    public int getBannerStatus() {
        return this.bannerStatus;
    }

    public void setBannerStatus(int bannerStatus) {
        this.bannerStatus = bannerStatus;
    }

}
