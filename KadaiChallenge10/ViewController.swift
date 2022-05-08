//
//  ViewController.swift
//  KadaiChallenge10
//
//  Created by 澤田世那 on 2022/05/04.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private let prefecturesList = ["北海道", "青森県", "岩手県", "宮城県", "秋田県",
                                   "山形県", "福島県", "茨城県", "栃木県", "群馬県",
                                   "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県",
                                   "富山県", "石川県", "福井県", "山梨県", "長野県",
                                   "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県",
                                   "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県",
                                   "鳥取県", "島根県", "岡山県", "広島県", "山口県",
                                   "徳島県", "香川県", "愛媛県", "高知県", "福岡県",
                                   "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県",
                                   "鹿児島県", "沖縄県"]

    @IBOutlet private weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        prefecturesList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.register(
            UINib(nibName: "PrefeturesTableViewCell", bundle: nil),
            forCellReuseIdentifier: "PrefeturesTableViewCell")

        let cell = tableView.dequeueReusableCell(withIdentifier: "PrefeturesTableViewCell", for: indexPath)
        // swiftlint:disable:next force_cast
        as! PrefeturesTableViewCell

        cell.configure(name: prefecturesList[indexPath.row], row: indexPath.row)

        return cell
    }
}
