// MARK: - Theme

public class PlainButtonTheme: ColorTheme {
    
    struct TitleColor {
        let normal: UIColor
        let disabled: UIColor
    }
    
    let titleColor: TitleColor

    public init(palette: Palette) {
        titleColor = TitleColor(normal: palette.colors.typography.labelLink,
                                disabled: palette.colors.typography.labelSecondary)
    }
    
}

extension PlainButton: Themeable {
    
    public typealias Theme = PlainButtonTheme

    public func apply(theme: Theme) {
        setTitleColor(theme.titleColor.normal, for: .normal)
        setTitleColor(theme.titleColor.disabled, for: .disabled)
    }
    
}
