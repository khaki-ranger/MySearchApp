//
//  ItemTableViewCell.swift
//  MySearchApp
//
//  Created by 寺島 洋平 on 2019/02/09.
//  Copyright © 2019年 YoheiTerashima. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    // MARK: Properties
    // 商品画像
    @IBOutlet weak var itemImageView: UIImageView!
    // 商品タイトル
    @IBOutlet weak var itemTitleLabel: UILabel!
    // 商品価格
    @IBOutlet weak var itemPriceLabel: UILabel!
    // 商品ページのURL
    // 遷移先の画面で利用する
    var itemUrl: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
         // 元々入っている情報を再利用時にクリア
        itemImageview.image = nil
    }

}
