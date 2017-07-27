# Nogizaka

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/nogizaka`. To experiment with that code, run `bin/console` for an interactive prompt.

Get information on members and single formation.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nogizaka'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nogizaka

## Usage

```ruby
§ irb

require "nogizaka"
```

```ruby
Nogizaka::Member.names
#=> ["秋元真夏", "生田絵梨花", "生駒里奈", "伊藤万理華", "井上小百合", "衛藤美彩", "川後陽菜", "川村真洋", "齋藤飛鳥", "斎藤ちはる", "斉藤優里", "桜井玲香", "白石麻衣", "高山一実", "中田花奈", "中元日芽香", "西野七瀬", "能條愛未", "樋口日奈", "星野みなみ", "松村沙友理", "若月佑美", "和田まあや", "伊藤かりん", "伊藤純奈", "北野日奈子", "相楽伊織", "佐々木琴子", "新内眞衣", "鈴木絢音", "寺田蘭世", "堀未央奈", "山﨑怜奈", "渡辺みり愛", "伊藤理々杏", "岩本蓮加", "梅澤美波", "大園桃子", "久保史緖里", "阪口珠美", "佐藤楓", "中村麗乃", "向井葉月", "山下美月", "吉田綾乃クリスティー", "与田祐希", "橋本奈々未", "深川麻衣", "永島聖羅", "松井玲奈"]

Nogizaka::Member.find_by(name: "渡辺みり愛")
#=> #<Nogizaka::Member:0x007fa45ca0d338 @attributes={:id=>34, :key_name=>"watanabe_miria", :name=>"渡辺みり愛", :entry_period=>"2nd"}>

nigemizu = Nogizaka::Single.last
#=> #<Nogizaka::Single:0x007fa45f107d58 @attributes={:id=>18, :title=>"逃げ水", :members=>{"third"=>[4, 29, 3, 12, 22, 5], "second"=>[20, 21, 2, 1, 6, 14], "front"=>[9, 13, 38, 46, 17, 32]}}>

nigemizu.selected_members
#=> ["伊藤万理華", "新内眞衣", "生駒里奈", "桜井玲香", "若月佑美", "井上小百合", "星野みなみ", "松村沙友理", "生田絵梨花", "秋元真夏", "衛藤美彩", "高山一実", "齋藤飛鳥", "白石麻衣", "大園桃子", "与田祐希", "西野七瀬", "堀未央奈"]

nigemizu.formation

3列目 | 伊藤万理華 | 新内眞衣 | 生駒里奈 | 桜井玲香 | 若月佑美 | 井上小百合
2列目 | 星野みなみ | 松村沙友理 | 生田絵梨花 | 秋元真夏 | 衛藤美彩 | 高山一実
1列目 | 齋藤飛鳥 | 白石麻衣 | 大園桃子 | 与田祐希 | 西野七瀬 | 堀未央奈
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/uchinokot/nogizaka. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

