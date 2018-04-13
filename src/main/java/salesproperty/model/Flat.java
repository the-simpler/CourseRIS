package salesproperty.model;

import javax.persistence.*;


@Entity
@Table(name = "flat")
public class Flat {
    @Id
    @Column(name = "flat_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int flatId;
    @Column(name = "name")
    private String flatName;
    @Column(name = "address")
    private String flatAddress;
    @Column(name = "price")
    private int price;
    @Column(name = "info")
    private String flatInfo;

    public int getFlat_id() {
        return flatId;
    }

    public void setFlatId(int flatId) {
        this.flatId = flatId;
    }

    public String getFlatName() {
        return flatName;
    }

    public void setFlatName(String flatName) {
        this.flatName = flatName;
    }

    public String getFlatAddress() {
        return flatAddress;
    }

    public void setFlatAddress(String flatAddress) {
        this.flatAddress = flatAddress;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getFlatInfo() {
        return flatInfo;
    }

    public void setFlatInfo(String flatInfo) {
        this.flatInfo = flatInfo;
    }

    @Override
    public String toString() {
        return "Flat{" +
                "flatId=" + flatId +
                ", flatName='" + flatName + '\'' +
                ", flatAddress='" + flatAddress + '\'' +
                ", price=" + price +
                ", flatInfo='" + flatInfo + '\'' +
                '}';
    }
}
