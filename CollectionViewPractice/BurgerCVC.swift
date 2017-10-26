
import UIKit

private let reuseIdentifier = "burgerCell"

class BurgerCVC: UICollectionViewController {

    var arr: [UIImage] = [#imageLiteral(resourceName: "burger1"), #imageLiteral(resourceName: "burger2"), #imageLiteral(resourceName: "burger3"), #imageLiteral(resourceName: "burger4")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

 
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? BurgerUICell
        cell?.burgerImageView.image = arr[indexPath.row]
        return cell!
    }


}
