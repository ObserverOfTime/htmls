declare function compile(template: string): (data: any) => string

declare namespace compile {
    export function compile(template: string): (data: any) => string

    export function compileHtml(template: string): (data: any) => string

    export function compileXml(template: string): (data: any) => string
}

export = compile
