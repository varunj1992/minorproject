package iou

class Bill {
    Double totalBill
    String title
    String description
    static hasMany = [user: User]
    static belongsTo = User


    static constraints = {
        description(maxSize: 50)
        title(blank: false,maxSize: 10)
    }
}
