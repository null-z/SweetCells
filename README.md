<p align="center">
<img src="https://img.shields.io/cocoapods/v/SweetCells.svg?style=flat"></a>
<a href="https://github.com/null-z/SweetCells/blob/master/LICENSE"><img src="https://img.shields.io/cocoapods/l/SweetCells.svg?style=flat"></a>
</p>

SweetCells is a little syntactic sugar for those who use custom UITableViewCell in xib in their projects. SweetCells will not allow you to make a mistake with the identifier of the cell and nibName, and dequeueReusableCell will immediately return to you the cell of the desired class.

## Installation

### [CocoaPods](https://guides.cocoapods.org/using/using-cocoapods.html)

```ruby
# Podfile
use_frameworks!

target 'YOUR_TARGET_NAME' do
  pod 'SweetCells'
end
```

## Usage

Just make a UITableViewCell subclass with .xib(YourCell name, xib name and reuseIdentifier must be equal)
Add RegistrableTableViewCell protocol to YourCell and get this:
```swift
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.registerCell(forClass: YourCell.self)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withClass: YourCell.self, forIndexPath: indexPath)
        return cell
    }
```

Or add AutoregistrableTableViewCell protocol and get this:
```swift
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withClass: YourCell.self, forIndexPath: indexPath)
        return cell
    }
```

## Requirements

* Xcode 10.2
* iOS 8.0+
* Swift 4.0+
